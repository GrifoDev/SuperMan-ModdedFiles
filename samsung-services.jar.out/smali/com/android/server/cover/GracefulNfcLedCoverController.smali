.class final Lcom/android/server/cover/GracefulNfcLedCoverController;
.super Lcom/android/server/cover/BaseNfcLedCoverController;
.source "GracefulNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;,
        Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    }
.end annotation


# static fields
.field protected static final CMD_LED_FACTORY_MODE:I = 0x70

.field private static final INTENT_RETURN_VALUE_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_RETURN_VALUE"

.field private static final INTENT_RETURN_VALUE_EXTRA_COMMAND_DATA:Ljava/lang/String; = "command_data"

.field private static final INTENT_RETURN_VALUE_EXTRA_START_RESULT:Ljava/lang/String; = "start_result"

.field private static final INTENT_RETURN_VALUE_EXTRA_START_SUCCESS:Ljava/lang/String; = "start_success"

.field private static final INTENT_RETURN_VALUE_EXTRA_TRANSCEIVE_RESULT:Ljava/lang/String; = "transceive_result"

.field private static final INTENT_RETURN_VALUE_EXTRA_TRANSCEIVE_SUCCESS:Ljava/lang/String; = "transceive_success"

.field private static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field private static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field private static final MSG_COVER_ATTACH_STATE:I = 0x7

.field private static final MSG_COVER_VERSION_CHECK:I = 0xa

.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0xb

.field private static final MSG_LED_NOTIFICATION_ADD:I = 0x8

.field private static final MSG_LED_NOTIFICATION_REMOVE:I = 0x9

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x6

.field private static final SETTING_SECURE_FIRMWARE_VERSION:Ljava/lang/String; = "led_cover_firmware_version"

.field private static final TAG:Ljava/lang/String; = "CoverManager.GracefulNfcLedCoverController"

.field private static TEST:I = 0x0

.field private static final VERSION_CHECK_COMMAND:[B

.field private static final WC_CONTROL_RESET_INTERVAL:J = 0x7530L


# instance fields
.field private mCallTimerLock:Ljava/lang/Object;

.field private mFirmwareVersion:Ljava/lang/String;

.field private final mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

.field private mIsLedOn:Z

.field private mLastWcControlResetTime:J

.field private mLedCoverStartRetryCount:I

.field private mLedCoverTransceiveRetryCount:I

.field private mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPollingTouchEvents:Z

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field private testCount:I


# direct methods
.method static synthetic -get0(Lcom/android/server/cover/GracefulNfcLedCoverController;)Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/GracefulNfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cover/GracefulNfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleCoverVersionCheck()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/cover/GracefulNfcLedCoverController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/cover/GracefulNfcLedCoverController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handlePollEventTouch(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/cover/GracefulNfcLedCoverController;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x5et
        0x0t
        0x0t
        0x7t
        0x7t
        0x71t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    iput v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    iput v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send leddata"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "pollTouch ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "touchResponse ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "version check ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nfc_led_cover_test"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    return-void
.end method

.method private buildNfcCoverLedData(I[B)[B
    .locals 9

    if-nez p2, :cond_0

    const/4 v6, 0x2

    new-array p2, v6, [B

    fill-array-data p2, :array_0

    :cond_0
    array-length v6, p2

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    const/4 v6, 0x2

    new-array v0, v6, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v6, v0, v7

    const/4 v6, 0x0

    aget-byte v6, p2, v6

    const/4 v7, 0x1

    aput-byte v6, v0, v7

    move-object p2, v0

    :cond_1
    const/4 v2, 0x0

    array-length v6, p2

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    const/4 v2, 0x1

    :cond_2
    const/4 v4, 0x5

    invoke-direct {p0, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getLenByteValue([B)I

    move-result v3

    if-eqz v2, :cond_3

    const/4 v6, 0x0

    aget-byte v6, p2, v6

    and-int/lit16 v3, v6, 0xff

    :cond_3
    add-int/lit8 v5, v3, 0x5

    add-int/lit8 v6, v3, 0x5

    new-array v1, v6, [B

    array-length v7, v1

    array-length v8, p2

    if-eqz v2, :cond_4

    const/4 v6, 0x5

    :goto_0
    add-int/2addr v6, v8

    if-ge v7, v6, :cond_5

    const-string/jumbo v6, "CoverManager.GracefulNfcLedCoverController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildNfcCoverLedData : Invalid genData length data.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " genData.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return-object v6

    :cond_4
    const/4 v6, 0x7

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v6, v1, v7

    const/16 v6, -0x5e

    const/4 v7, 0x1

    aput-byte v6, v1, v7

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput-byte v6, v1, v7

    const/4 v6, 0x0

    const/4 v7, 0x3

    aput-byte v6, v1, v7

    int-to-byte v6, v3

    const/4 v7, 0x4

    aput-byte v6, v1, v7

    if-eqz v2, :cond_6

    array-length v6, p2

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-static {p2, v7, v1, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_1
    const-string/jumbo v6, "CoverManager.GracefulNfcLedCoverController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "byte data to send to cover: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_6
    int-to-byte v6, v3

    const/4 v7, 0x5

    aput-byte v6, v1, v7

    int-to-byte v6, p1

    const/4 v7, 0x6

    aput-byte v6, v1, v7

    array-length v6, p2

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-static {p2, v7, v1, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v5, -0x2

    const/4 v8, -0x1

    aput-byte v8, v1, v7

    const/4 v7, -0x1

    aput-byte v7, v1, v6

    goto :goto_1

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private clearRetryCountDelayedMsg()V
    .locals 2

    const/4 v1, 0x4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    iput v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private getLenByteValue([B)I
    .locals 2

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    array-length v1, p1

    add-int/lit8 v0, v1, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private getListenerTypeForCommand(I[B)I
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, -0x1

    return v0

    :sswitch_0
    return v2

    :sswitch_1
    if-eqz p2, :cond_0

    array-length v0, p2

    if-le v0, v1, :cond_0

    aget-byte v0, p2, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    return v2

    :sswitch_2
    if-eqz p2, :cond_0

    array-length v0, p2

    if-le v0, v1, :cond_0

    aget-byte v0, p2, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_3
    const/4 v0, 0x2

    return v0

    :pswitch_4
    const/4 v0, 0x3

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
        0x70 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleAddLedNotification(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    monitor-exit v4

    return-void
.end method

.method private handleCoverDetachedLocked()V
    .locals 3

    const-string/jumbo v0, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    invoke-virtual {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleCoverVersionCheck()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Firmware version already retrieved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "Led is on, try checking version later"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStartLedCoverMode()[B

    move-result-object v0

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Version check start result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v4}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    :cond_2
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->transceiveVersionCheck()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Firmware version retrieved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "led_cover_firmware_version"

    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v4}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    :cond_5
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method private handleEventResponse(II)V
    .locals 5

    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HandleEventResponse: type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v3, "Event touch: accept"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v2, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    :goto_1
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v3, "Event touch: reject"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v2, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4
    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown event action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleInvalidCommand(I[B[B)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    const/16 v2, 0x12

    if-eq p1, v2, :cond_0

    array-length v2, p3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-byte v2, p3, v5

    sparse-switch v2, :sswitch_data_0

    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transceive error - unknown error value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v3, "Sent done intent, fail transceive"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    iput-boolean v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :sswitch_0
    iget v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v3, 0xd

    if-ge v2, v3, :cond_1

    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Repeat command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v1

    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stop result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    return-void

    :cond_1
    iput v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v3, "Could not transceive command to cover so turn off led cover"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50 -> :sswitch_0
        -0x4f -> :sswitch_0
        -0x4e -> :sswitch_0
        -0x20 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    monitor-exit v4

    return-void
.end method

.method private handlePollEventTouch(I)V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v4, :cond_0

    const-string/jumbo v4, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v5, "Stop polling touch events"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_0
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    :cond_1
    new-array v4, v8, [B

    fill-array-data v4, :array_0

    const/16 v5, 0x11

    invoke-direct {p0, v5, v4}, Lcom/android/server/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v4, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v5, "Invalid data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->resetWcControlTimer()V

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_3
    :goto_0
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_4

    const/4 v4, 0x6

    new-array v3, v4, [B

    const/4 v4, 0x6

    aput-byte v4, v3, v7

    const/16 v4, 0x11

    aput-byte v4, v3, v10

    aput-byte v7, v3, v8

    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-ne v4, v8, :cond_5

    aput-byte v10, v3, v9

    :goto_1
    const/4 v4, 0x4

    aput-byte v11, v3, v4

    const/4 v4, 0x5

    aput-byte v11, v3, v4

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isFinishedTouchReply([B)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v5, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TouchEvent from led cover: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v4, v3, v9

    if-ne v4, v10, :cond_7

    const-string/jumbo v4, "accept"

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/GracefulNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v9, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    aget-byte v4, v3, v9

    iput v4, v1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :goto_3
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v5, "Error sending data to NFC"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-ne v4, v10, :cond_6

    aput-byte v8, v3, v9

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "CoverManager.GracefulNfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown test value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", reject by default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aput-byte v8, v3, v9

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v4, "reject"

    goto :goto_2

    :cond_8
    const-string/jumbo v4, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v5, "No touch event from LED cover, keep listening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v8, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private handleRemoveLedNotification(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    monitor-exit v4

    return-void
.end method

.method private handleSendDataToNfcLedCover(I[B)V
    .locals 12

    iget-object v9, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.NFC_LED_COVER_RETURN_VALUE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleSendDataToLedCover : command : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Firmware version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v10, "Invalid data"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-void

    :cond_0
    const/16 v8, 0x12

    if-ne p1, v8, :cond_1

    :try_start_1
    iget-boolean v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v10, "NfcLedCover not started, Start wireless charger"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v10, "Led cover already off"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v10, "Ensuring NFC LED Cover started"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController;->tryStartLedCover(Landroid/content/Intent;)Z

    move-result v0

    const-string/jumbo v8, "command_data"

    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v8, "start_success"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez v0, :cond_3

    iget v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v10, 0xd

    if-ge v8, v10, :cond_2

    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/4 v8, 0x4

    iput v8, v4, Landroid/os/Message;->what:I

    iput p1, v4, Landroid/os/Message;->arg1:I

    iput-object p2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v7

    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Stop result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v9

    return-void

    :cond_2
    :try_start_3
    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v10, "Could not start NFC LED Cover"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_3
    const/4 v8, 0x0

    :try_start_4
    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v6, 0x0

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->resetWcControlTimer()V

    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8, v2}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v6

    if-eqz v6, :cond_4

    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Response data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :goto_1
    :try_start_6
    const-string/jumbo v8, "transceive_result"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-direct {p0, v2, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isValidResponse([B[B)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error parsing response for command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleInvalidCommand(I[B[B)V

    const-string/jumbo v8, "transceive_success"

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget v8, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v8, :cond_5

    monitor-exit v9

    return-void

    :catch_0
    move-exception v1

    :try_start_7
    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v10, "Error in trancieve command"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_5
    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v10, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v10, "Done, sucess"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    sparse-switch p1, :sswitch_data_0

    :goto_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v8}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    monitor-exit v9

    return-void

    :cond_6
    :try_start_8
    const-string/jumbo v8, "transceive_success"

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    :sswitch_0
    sget v8, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v8, :cond_7

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/4 v8, 0x2

    iput v8, v4, Landroid/os/Message;->what:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getListenerTypeForCommand(I[B)I

    move-result v3

    if-ltz v3, :cond_9

    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v8}, Lcom/android/server/cover/GracefulNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iput v3, v4, Landroid/os/Message;->arg1:I

    iget-boolean v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz v8, :cond_8

    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v10, "Already polling for touch events"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :goto_5
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    :cond_8
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    goto :goto_5

    :cond_9
    const/16 v8, 0x70

    if-ne p1, v8, :cond_a

    if-eqz v2, :cond_a

    array-length v8, v2

    const/16 v10, 0x8

    if-le v8, v10, :cond_a

    const/16 v8, 0x8

    aget-byte v8, v2, v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_a

    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v10, "Factory Mode Full LED off was sent, so turn off LedCover"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    goto :goto_3

    :cond_a
    const-string/jumbo v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Wrong listener type requested for command:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; return"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v9

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_0
        0x12 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSendPowerKeyToCover()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->notifyPowerButtonPressListeners()V

    return-void
.end method

.method private isFinishedTouchReply([B)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    array-length v2, p1

    const/4 v3, 0x6

    if-lt v2, v3, :cond_2

    aget-byte v2, p1, v0

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2

    aget-byte v2, p1, v4

    if-eq v2, v0, :cond_0

    aget-byte v2, p1, v4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isValidCoverStartData([B)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isValidResponse([B[B)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return v3

    :cond_0
    array-length v1, p2

    array-length v2, p1

    add-int/lit8 v2, v2, -0x5

    if-ge v1, v2, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x5

    if-ge v0, v1, :cond_3

    aget-byte v1, p2, v0

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, p1, v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private notifyPowerButtonPressListeners()V
    .locals 6

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    monitor-exit v4

    return-void
.end method

.method private resetWcControlTimer()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    iput-wide v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    :cond_0
    return-void
.end method

.method private stopLedCover()V
    .locals 5

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v0

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stop LedCover, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "LED_OFF, Start wireless charger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x1f4

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private transceiveVersionCheck()Z
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    sget-object v3, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    invoke-virtual {v2, v3}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v0

    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Verison check response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    array-length v2, v0

    sget-object v3, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x5

    if-lt v2, v3, :cond_2

    aget-byte v2, v0, v5

    sget-object v3, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    aget-byte v3, v3, v8

    if-ne v2, v3, :cond_2

    aget-byte v2, v0, v6

    sget-object v3, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    aget-byte v3, v3, v9

    if-ne v2, v3, :cond_2

    aget-byte v2, v0, v7

    sget-object v3, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_2

    aget-byte v2, v0, v8

    sget-object v3, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_2

    aget-byte v2, v0, v9

    sget-object v3, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    const/16 v4, 0xb

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v2, "%02X %02X"

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x4

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tryStartLedCover(Landroid/content/Intent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "Disable Wireless Charger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v4}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStartLedCoverMode()[B

    move-result-object v0

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "start_result"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "Started NFC LED Cover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    iput-boolean v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    :goto_0
    return v5

    :cond_1
    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "Failed to start NFC LED Cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "NFC LED Cover already started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "addLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "  TEST="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v2, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, " Current NFC Callback state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Live callbacks ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_1
    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void
.end method

.method registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNfcTouchListenerCallback: binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    const/4 v1, 0x5

    if-le p1, v1, :cond_1

    :cond_0
    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported touch listener type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    new-instance v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "removeLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "sendDataToLedCover : Nfc Service not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDataToNfcLedCover: command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, -0x1

    const-string/jumbo v5, "event_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v5, "lcd_touch_listener_type"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "lcd_touch_listener_respone"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v5, 0x3

    iput v5, v1, Landroid/os/Message;->what:I

    iput v4, v1, Landroid/os/Message;->arg1:I

    iput v3, v1, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unRegisterNfcTouchListenerCallback: binder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_1
    monitor-exit v3

    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v3, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method updateNfcLedCoverAttachStateLocked(ZI)V
    .locals 6

    const/4 v5, 0x7

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-ne p2, v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v2, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    iget-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v2, :cond_3

    const-string/jumbo v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v4, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "nfc_led_cover_test"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
