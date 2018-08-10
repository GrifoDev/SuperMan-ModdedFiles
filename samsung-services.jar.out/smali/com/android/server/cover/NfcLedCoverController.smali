.class final Lcom/android/server/cover/NfcLedCoverController;
.super Lcom/android/server/cover/BaseNfcLedCoverController;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;,
        Lcom/android/server/cover/NfcLedCoverController$Command;,
        Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;,
        Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    }
.end annotation


# static fields
.field private static final CMD_LED_BATTERY_CHARGING_WIRELESS_DELAY:J = 0x96L

.field private static final CMD_LED_CALL_INPROGRESS:I = 0xfffe

.field private static final CMD_LED_CLEAR_ONGOING_EVENT:I = 0xfff0

.field private static final CMD_LED_CLOCK_TIME_TICK:I = 0xffff

.field private static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field private static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field private static final LED_COVER_RETRY_DONE_INTENT_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

.field private static final MSG_CLEAR_ONGOING_EVENT:I = 0x5

.field private static final MSG_COVER_ATTACH_STATE:I = 0x7

.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0xa

.field private static final MSG_LED_NOTIFICATION_ADD:I = 0x8

.field private static final MSG_LED_NOTIFICATION_REMOVE:I = 0x9

.field private static final MSG_LED_OFF_BY_SELF:I = 0x1

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x6

.field private static final RESPONSE_COMMAND_POS:I = 0x3

.field private static final RESPONSE_LEN_POS:I = 0x1

.field private static final RESPONSE_STATUS_POS:I = 0x2

.field private static final SYSTEM_EVENT_KEY_TYPE:Ljava/lang/String; = "event_type"

.field private static final SYSTEM_EVENT_TOUCH_RESPONSE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CoverManager.NfcLedCoverController"

.field private static TEST:I

.field private static final mResponsePattern:[B


# instance fields
.field private mCallDurationTimer:Ljava/util/Timer;

.field private mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

.field private mCallInProgressDisplay:Z

.field private mCallStartTime:J

.field private mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mCoverEventsDisabledForSamsungPay:Z

.field mFactoryTransceiveResponseIntentSent:Z

.field private final mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

.field private mIsLedOn:Z

.field private mLedCoverRetryPostTime:J

.field private mLedCoverStartRetryCount:I

.field private mLedCoverTransceiveRetryCount:I

.field private mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

.field private mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPollingTouchEvents:Z

.field private mPrevCommand:I

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field private testCount:I


# direct methods
.method static synthetic -get0(Lcom/android/server/cover/NfcLedCoverController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/cover/NfcLedCoverController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/NfcLedCoverController;)[B
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->getCallDuration()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/cover/NfcLedCoverController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleClearOngoingEvent(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/cover/NfcLedCoverController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/cover/NfcLedCoverController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handlePollEventTouch(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/cover/NfcLedCoverController;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x10t
        0x6t
        -0x2ft
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

    iput-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    iput v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iput v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send leddata"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "pollTouch ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "touchResponse ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "onoff ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nfc_led_cover_test"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    return-void
.end method

.method private buildNfcCoverLedData(I[B)[B
    .locals 9

    const/4 v5, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    if-nez p2, :cond_0

    new-array p2, v5, [B

    aput-byte v6, p2, v6

    :cond_0
    const/4 v2, 0x5

    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->getLenByteValue([B)I

    move-result v1

    add-int/lit8 v3, v1, 0x5

    add-int/lit8 v4, v1, 0x5

    new-array v0, v4, [B

    aput-byte v6, v0, v6

    const/16 v4, -0x5e

    aput-byte v4, v0, v5

    const/4 v4, 0x2

    aput-byte v6, v0, v4

    const/4 v4, 0x3

    aput-byte v6, v0, v4

    int-to-byte v4, v1

    const/4 v5, 0x4

    aput-byte v4, v0, v5

    const/16 v4, 0x10

    aput-byte v4, v0, v7

    int-to-byte v4, v1

    const/4 v5, 0x6

    aput-byte v4, v0, v5

    int-to-byte v4, p1

    const/4 v5, 0x7

    aput-byte v4, v0, v5

    array-length v4, p2

    const/16 v5, 0x8

    invoke-static {p2, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v5, v3, -0x2

    aput-byte v8, v0, v5

    aput-byte v8, v0, v4

    const-string/jumbo v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "byte data to send to cover: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private clearOngoingEvent()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    return-void
.end method

.method private clearRetryCountDelayedMsg()V
    .locals 2

    const/4 v1, 0x4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iput v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private getCallDuration()[B
    .locals 12

    const/4 v6, 0x4

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    iget-wide v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    const/4 v1, 0x0

    const-string/jumbo v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v8, 0x3c

    div-long v8, v4, v8

    const-wide/16 v10, 0x64

    rem-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string/jumbo v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v8, 0x3c

    rem-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v6, 0x0

    aget-byte v6, v2, v6

    const/4 v7, 0x0

    aput-byte v6, v0, v7

    const/4 v6, 0x1

    aget-byte v6, v2, v6

    const/4 v7, 0x1

    aput-byte v6, v0, v7

    const/4 v6, 0x0

    aget-byte v6, v3, v6

    const/4 v7, 0x2

    aput-byte v6, v0, v7

    const/4 v6, 0x1

    aget-byte v6, v3, v6

    const/4 v7, 0x3

    aput-byte v6, v0, v7

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getCurrentClockData()[B
    .locals 13

    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eqz v0, :cond_0

    const-string/jumbo v8, "%02d%02d"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string/jumbo v8, "CoverManager.NfcLedCoverController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getCurrentClockData : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    return-object v8

    :cond_0
    rem-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_1

    const/16 v5, 0xc

    :cond_1
    const-string/jumbo v8, "%2d%02d"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getLenByteValue([B)I
    .locals 2

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    array-length v1, p1

    add-int/lit8 v0, v1, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private getListenerTypeForCommand(I[B)I
    .locals 2

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, -0x1

    return v0

    :sswitch_0
    return v1

    :sswitch_1
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    aget-byte v0, p2, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    return v1

    :sswitch_2
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

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
        0xe0 -> :sswitch_1
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

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
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

.method private handleClearOngoingEvent(I)V
    .locals 1

    const v0, 0xfffe

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v0, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    if-ne v0, p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearOngoingEvent()V

    :cond_2
    return-void
.end method

.method private handleCoverDetachedLocked()V
    .locals 2

    const-string/jumbo v0, "CoverManager.NfcLedCoverController"

    const-string/jumbo v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    invoke-virtual {p0}, Lcom/android/server/cover/NfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private handleEventResponse(II)V
    .locals 5

    const-string/jumbo v2, "CoverManager.NfcLedCoverController"

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

    const-string/jumbo v2, "CoverManager.NfcLedCoverController"

    const-string/jumbo v3, "Event touch: accept"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v2, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V
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
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v2}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    const-string/jumbo v2, "CoverManager.NfcLedCoverController"

    const-string/jumbo v3, "Event touch: reject"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v2, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4
    const-string/jumbo v2, "CoverManager.NfcLedCoverController"

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
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    iput p1, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    if-eqz p3, :cond_2

    const/16 v5, 0x12

    if-eq p1, v5, :cond_2

    array-length v5, p3

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    const/4 v0, 0x0

    aget-byte v5, p3, v8

    sparse-switch v5, :sswitch_data_0

    const-string/jumbo v5, "CoverManager.NfcLedCoverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transceive error - unknown error value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v0, :cond_0

    array-length v5, p3

    if-le v5, v9, :cond_0

    aget-byte v5, p3, v9

    const/16 v6, -0x30

    if-ne v5, v6, :cond_0

    array-length v5, p3

    new-array v4, v5, [B

    array-length v5, p3

    invoke-static {p3, v8, v4, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v5, -0x2f

    aput-byte v5, v4, v9

    invoke-direct {p0, p1, v4}, Lcom/android/server/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v6, 0xd

    if-ge v5, v6, :cond_1

    const-string/jumbo v5, "CoverManager.NfcLedCoverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Repeat command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v3

    const-string/jumbo v5, "CoverManager.NfcLedCoverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Stop result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v5, 0x4

    iput v5, v2, Landroid/os/Message;->what:I

    iput p1, v2, Landroid/os/Message;->arg1:I

    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    iget v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    return-void

    :sswitch_0
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1
    iput v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const-string/jumbo v5, "CoverManager.NfcLedCoverController"

    const-string/jumbo v6, "Could not transceive command to cover so turn off led cover"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v5, "CoverManager.NfcLedCoverController"

    const-string/jumbo v6, "Sent done intent, fail transceive"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_1

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V

    iput-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v9}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v5}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :sswitch_1
    iget-boolean v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    if-eqz v5, :cond_3

    iput-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto :goto_1

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

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x4

    const-string/jumbo v4, "lcd_off_disabled_by_cover"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eq v4, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    invoke-virtual {v2, v0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    monitor-exit v5

    return-void
.end method

.method private handlePollEventTouch(I)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v4, :cond_0

    const-string/jumbo v4, "CoverManager.NfcLedCoverController"

    const-string/jumbo v5, "Stop polling touch events"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_0
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    :cond_1
    new-array v4, v8, [B

    aput-byte v7, v4, v7

    const/16 v5, 0x11

    invoke-direct {p0, v5, v4}, Lcom/android/server/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_2
    :goto_0
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_3

    const/4 v4, 0x5

    new-array v3, v4, [B

    aput-byte v7, v3, v8

    aput-byte v7, v3, v7

    const/16 v4, -0x2f

    aput-byte v4, v3, v9

    const/16 v4, 0x11

    aput-byte v4, v3, v11

    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-ne v4, v9, :cond_4

    aput-byte v8, v3, v10

    :cond_3
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/cover/NfcLedCoverController;->isFinishedTouchReply([B)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v5, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TouchEvent from led cover: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v4, v3, v10

    if-ne v4, v8, :cond_6

    const-string/jumbo v4, "accept"

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v11, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    aget-byte v4, v3, v10

    iput v4, v1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :goto_3
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "CoverManager.NfcLedCoverController"

    const-string/jumbo v5, "Error sending data to NFC"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-ne v4, v8, :cond_5

    aput-byte v9, v3, v10

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown test value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", reject by default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aput-byte v9, v3, v10

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "reject"

    goto :goto_2

    :cond_7
    const-string/jumbo v4, "CoverManager.NfcLedCoverController"

    const-string/jumbo v5, "No touch event from LED cover, keep listening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v9, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3
.end method

.method private handleRemoveLedNotification(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
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
    .locals 13

    const/4 v12, 0x4

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleSendDataToLedCover : command : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v12, :cond_1

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    if-eqz p2, :cond_1

    array-length v9, p2

    if-lez v9, :cond_1

    const/4 v9, 0x0

    aget-byte v9, p2, v9

    if-nez v9, :cond_1

    iget v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v9, v12, :cond_0

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    const-string/jumbo v10, "CMD_LED_CALL_END was already processed so return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    const-string/jumbo v10, "CMD_LED_CALL_END called but with dummy data, switch to LED_OFF and stop CallTimer"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x12

    :cond_1
    const v9, 0xfffe

    if-ne p1, v9, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->startCallInProgressDisplayTimer([B)V

    const/4 p1, 0x3

    :goto_0
    iget v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    iput p1, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->setOngoingEventIfValid(I[B)V

    sparse-switch p1, :sswitch_data_0

    :goto_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v9}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    const/16 v9, 0x12

    if-ne p1, v9, :cond_3

    :try_start_2
    iget-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    const-string/jumbo v10, "NfcLedCover not started, Start wireless charger"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    const-string/jumbo v10, "Led cover already off"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_3
    :try_start_3
    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    const-string/jumbo v10, "Ensuring NFC LED Cover started"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->tryStartLedCover()Z

    move-result v0

    if-nez v0, :cond_5

    iget v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v10, 0xd

    if-ge v9, v10, :cond_4

    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    const/4 v9, 0x4

    iput v9, v5, Landroid/os/Message;->what:I

    iput p1, v5, Landroid/os/Message;->arg1:I

    iput-object p2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    iget v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v9}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v8

    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Stop result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_4
    :try_start_4
    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    const-string/jumbo v10, "Could not start NFC LED Cover"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    const-string/jumbo v10, "Sent done intent, fail start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9

    :cond_5
    const/4 v9, 0x0

    :try_start_5
    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    const/4 v7, 0x0

    :try_start_6
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v9, v3}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v7

    if-eqz v7, :cond_6

    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Response data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v7}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_6
    :goto_4
    :try_start_7
    invoke-direct {p0, p1, v7}, Lcom/android/server/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

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

    invoke-virtual {p0, v7}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, v7}, Lcom/android/server/cover/NfcLedCoverController;->handleInvalidCommand(I[B[B)V

    invoke-direct {p0, v7}, Lcom/android/server/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    sget v9, Lcom/android/server/cover/NfcLedCoverController;->TEST:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_0
    move-exception v2

    :try_start_8
    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    const-string/jumbo v10, "Error in trancieve command"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_7
    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    const-string/jumbo v10, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    const-string/jumbo v10, "Sent done intent, sucess"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->scheduleLedOffTimeout(I[B)V

    goto/16 :goto_0

    :sswitch_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    :sswitch_1
    sget v9, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v9, :cond_9

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    :cond_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    const/4 v9, 0x2

    iput v9, v5, Landroid/os/Message;->what:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->getListenerTypeForCommand(I[B)I

    move-result v4

    if-gez v4, :cond_a

    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

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

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_a
    :try_start_9
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v9}, Lcom/android/server/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iput v4, v5, Landroid/os/Message;->arg1:I

    iget-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz v9, :cond_b

    const-string/jumbo v9, "CoverManager.NfcLedCoverController"

    const-string/jumbo v10, "Already polling for touch events"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :goto_5
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x64

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    :cond_b
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    goto :goto_5

    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V

    invoke-direct {p0, v6}, Lcom/android/server/cover/NfcLedCoverController;->notifyLedOffListeners(I)V

    :sswitch_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
        0xa -> :sswitch_3
        0x12 -> :sswitch_2
        0xe0 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSendPowerKeyToCover()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->notifyPowerButtonPressListeners()V

    new-array v0, v2, [B

    aput-byte v1, v0, v1

    iget-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsLedOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". should be off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsLedOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". should be on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mOngoingEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v1, v1, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "There is no time update task but we\'ve got call duration ongoing event... displaying clock instead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearOngoingEvent()V

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v1, v1, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget-object v2, v2, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    invoke-virtual {p0, v1, v2}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private isFinishedTouchReply([B)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    array-length v2, p1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    aget-byte v2, p1, v4

    const/16 v3, -0x2f

    if-ne v2, v3, :cond_2

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2

    aget-byte v2, p1, v5

    if-eq v2, v0, :cond_0

    aget-byte v2, p1, v5

    if-ne v2, v4, :cond_1

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

.method private isSingleMissedEvent([B)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x30

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    :cond_0
    return v1

    :cond_1
    aget-byte v2, p1, v0

    if-ne v2, v4, :cond_3

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_4

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    if-eq v2, v4, :cond_2

    :cond_4
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

.method private isValidResponse(I[B)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return v3

    :cond_0
    array-length v2, p2

    sget-object v4, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v4, v4

    if-ge v2, v4, :cond_1

    return v3

    :cond_1
    sget-object v2, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    int-to-byte v4, p1

    const/4 v5, 0x3

    aput-byte v4, v2, v5

    const-string/jumbo v2, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected response data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    invoke-virtual {p0, v5}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    array-length v4, p2

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_6

    aget-byte v0, p2, v2

    sget-object v5, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    aget-byte v5, v5, v1

    if-eq v0, v5, :cond_2

    if-ne v1, v6, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    sget-object v5, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v5, v5

    if-ne v1, v5, :cond_4

    return v6

    :cond_3
    if-nez v1, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v3

    :cond_6
    return v3
.end method

.method private notifyLedOffListeners(I)V
    .locals 7

    const/4 v0, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "led_off_command"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    return-void
.end method

.method private notifyPowerButtonPressListeners()V
    .locals 6

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
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

.method private scheduleLedOffTimeout(I[B)V
    .locals 8

    const-wide/16 v6, 0xe74

    const/16 v5, 0xf

    const/4 v4, 0x1

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleLedOffTimerout, command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    iget-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v1, :cond_3

    if-eq p1, v5, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    :cond_0
    iget v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p1, v5, :cond_2

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "Time update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_2
    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "Call InProgress duration time update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x11f8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->isSingleMissedEvent([B)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x13ec

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x2328

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x12 -> :sswitch_0
        0x14 -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private sendCurrentClockCommand()V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    return-void
.end method

.method private sendNfcFailIntentForFactoryMode([B)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    array-length v1, p1

    if-le v1, v5, :cond_2

    aget-byte v1, p1, v3

    const/16 v2, 0x69

    if-ne v1, v2, :cond_2

    aget-byte v1, p1, v4

    const/16 v2, -0x7b

    if-ne v1, v2, :cond_2

    aget-byte v1, p1, v5

    if-nez v1, :cond_2

    iput-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.NFC_LED_COVER_FPCB_DISCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    return-void
.end method

.method private setOngoingEventIfValid(I[B)V
    .locals 3

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    return-void

    :sswitch_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    aget-byte v0, p2, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    aget-byte v0, p2, v2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController$Command;-><init>(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iput p1, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iput-object p2, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method private startCallInProgressDisplayTimer([B)V
    .locals 11

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    :try_start_0
    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "CoverManager.NfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CallStartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    invoke-direct {v0, p0, v10}, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/cover/NfcLedCoverController;Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    :try_start_1
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v0, "CoverManager.NfcLedCoverController"

    const-string/jumbo v1, "CallStartTime incorrect"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v8

    const-string/jumbo v0, "CoverManager.NfcLedCoverController"

    const-string/jumbo v1, "CallStartTime incorrect"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2
    move-exception v9

    const-string/jumbo v0, "CoverManager.NfcLedCoverController"

    const-string/jumbo v1, "Error while scheduling TimerTask"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    iput-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    goto :goto_0
.end method

.method private stopCallInProgressDisplayTimer()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    return-void

    :cond_0
    const-string/jumbo v0, "CoverManager.NfcLedCoverController"

    const-string/jumbo v1, "Call duration should not be null in stop or was already stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopLedCover()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v0

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

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

    iput-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "LED_OFF, Start wireless charger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    return-void
.end method

.method private tryStartLedCover()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "Disable Wireless Charger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v4}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStartLedCoverMode()[B

    move-result-object v0

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "Started NFC LED Cover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iput-boolean v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    :goto_0
    return v5

    :cond_1
    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "Failed to start NFC LED Cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    return v4

    :cond_2
    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "NFC LED Cover already started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "addLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, " Current NFC Callback state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Live callbacks ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

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

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

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
    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

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
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    const-string/jumbo v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "removeLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 10

    const/16 v9, 0xf

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "CoverManager.NfcLedCoverController"

    const-string/jumbo v4, "sendDataToLedCover : Not attached LED Cover or Disabled by SamsungPay"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/cover/NfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "CoverManager.NfcLedCoverController"

    const-string/jumbo v4, "sendDataToLedCover : Nfc Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDataToNfcLedCover: command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0xffff

    if-ne p1, v3, :cond_2

    iget v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v3, v9, :cond_4

    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v3, :cond_4

    const/16 p1, 0xf

    :cond_2
    if-ne p1, v9, :cond_3

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->getCurrentClockData()[B

    move-result-object p2

    :cond_3
    const/16 v3, 0xc

    if-ne p1, v3, :cond_5

    iget v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_5

    const-string/jumbo v3, "CoverManager.NfcLedCoverController"

    const-string/jumbo v4, "Ignore battery chargin, battery low already shown"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string/jumbo v3, "CoverManager.NfcLedCoverController"

    const-string/jumbo v4, "Time tick: clock not displayed, ignore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v3}, Lcom/android/server/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput p1, v2, Landroid/os/Message;->arg1:I

    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const v3, 0xfff0

    if-ne p1, v3, :cond_7

    if-eqz p2, :cond_6

    array-length v3, p2

    if-lez v3, :cond_6

    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    aget-byte v3, p2, v6

    iput v3, v2, Landroid/os/Message;->arg1:I

    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    :goto_0
    return-void

    :cond_7
    const/16 v3, 0x13

    if-ne p1, v3, :cond_8

    iput v8, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v8}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_8
    iput v6, v2, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v8}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    sub-long v0, v6, v4

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_9

    const-wide/16 v0, 0x0

    :cond_9
    const-string/jumbo v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "There is pending DELAYED message due to Retry mechanism send this command with proper delay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CoverManager.NfcLedCoverController"

    const-string/jumbo v1, "handleMessage MSG_EVENT_POWER_BUTTON: SamsungPay active - ignore power button events"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_0
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

    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

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

    const-string/jumbo v2, "CoverManager.NfcLedCoverController"

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

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    const-string/jumbo v2, "CoverManager.NfcLedCoverController"

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
    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v2, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "CoverManager.NfcLedCoverController"

    const-string/jumbo v4, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "nfc_led_cover_test"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
