.class public Landroid/app/BarBeamService;
.super Landroid/app/IBarBeamService$Stub;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BarBeamService$1;,
        Landroid/app/BarBeamService$CheckStatusThread;,
        Landroid/app/BarBeamService$Listener;
    }
.end annotation


# static fields
.field static FAIL:Z = false

.field private static final LED_PATH:Ljava/lang/String; = "/sys/class/sec/led/led_b"

.field private static final MIN_LED_TIME:I = 0x1f4

.field private static final PERMISSION_BARCODE_READ:Ljava/lang/String; = "com.samsung.permission.BARCODE_READ"

.field static SUCCESS:Z = false

.field private static final TAG:Ljava/lang/String; = "BarBeamService"

.field private static bEnabled:Z

.field static result:Z


# instance fields
.field private final DATA_COMMAND:B

.field private final LED_NOTIF_ID:I

.field private final MAX_SEQUENCE_REGISTER:I

.field private final MSG_START_LED_NOTIFY:I

.field private final MSG_STOP_BEAMING:I

.field private final MSG_STOP_LED_NOTIFY:I

.field private final NUM_HOPS_VERSION_COMMAND:B

.field private final SEQUENCE_REGISTER_LENGTH:B

.field private final SEQUENCE_REGISTER_START:B

.field private final START_STOP_COMMAND:B

.field private final SYSFS_BARCODE_CONTROL:Ljava/lang/String;

.field private final SYSFS_BARCODE_ENABLE:Ljava/lang/String;

.field private final SYSFS_BARCODE_LED_STATUS:Ljava/lang/String;

.field private callbacks:Landroid/app/IBarBeamListener;

.field private isRunning:Z

.field private mBeamLength:B

.field private final mContext:Landroid/content/Context;

.field private mLEDTimer:Ljava/util/Timer;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BarBeamService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field mMsgHandler:Landroid/os/Handler;

.field private mUseCount:I

.field mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;


# direct methods
.method static synthetic -get0(Landroid/app/BarBeamService;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/BarBeamService;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/BarBeamService;->isRunning:Z

    return p1
.end method

.method static synthetic -set1(Landroid/app/BarBeamService;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/BarBeamService;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/BarBeamService;->swtichLED(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/app/BarBeamService;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/BarBeamService;->blinkLED()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/BarBeamService;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/BarBeamService;->stopBlinkLED()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/BarBeamService;->SUCCESS:Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/BarBeamService;->FAIL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/IBarBeamService$Stub;-><init>()V

    iput-object v1, p0, Landroid/app/BarBeamService;->callbacks:Landroid/app/IBarBeamListener;

    iput-byte v2, p0, Landroid/app/BarBeamService;->mBeamLength:B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    iput-byte v2, p0, Landroid/app/BarBeamService;->DATA_COMMAND:B

    const/16 v0, -0x7f

    iput-byte v0, p0, Landroid/app/BarBeamService;->SEQUENCE_REGISTER_START:B

    const/4 v0, 0x7

    iput-byte v0, p0, Landroid/app/BarBeamService;->SEQUENCE_REGISTER_LENGTH:B

    const/16 v0, 0x12

    iput v0, p0, Landroid/app/BarBeamService;->MAX_SEQUENCE_REGISTER:I

    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/app/BarBeamService;->START_STOP_COMMAND:B

    const/16 v0, -0x80

    iput-byte v0, p0, Landroid/app/BarBeamService;->NUM_HOPS_VERSION_COMMAND:B

    iput-object v1, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    const/16 v0, 0x1428

    iput v0, p0, Landroid/app/BarBeamService;->LED_NOTIF_ID:I

    const-string/jumbo v0, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    iput-object v0, p0, Landroid/app/BarBeamService;->SYSFS_BARCODE_ENABLE:Ljava/lang/String;

    const-string/jumbo v0, "/sys/class/sec/sec_barcode_emul/barcode_send"

    iput-object v0, p0, Landroid/app/BarBeamService;->SYSFS_BARCODE_CONTROL:Ljava/lang/String;

    const-string/jumbo v0, "/sys/class/sec/sec_barcode_emul/barcode_led_status"

    iput-object v0, p0, Landroid/app/BarBeamService;->SYSFS_BARCODE_LED_STATUS:Ljava/lang/String;

    const/16 v0, 0x1e

    iput v0, p0, Landroid/app/BarBeamService;->MSG_START_LED_NOTIFY:I

    const/16 v0, 0x28

    iput v0, p0, Landroid/app/BarBeamService;->MSG_STOP_LED_NOTIFY:I

    const/16 v0, 0x32

    iput v0, p0, Landroid/app/BarBeamService;->MSG_STOP_BEAMING:I

    iput-object v1, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    iput v2, p0, Landroid/app/BarBeamService;->mUseCount:I

    new-instance v0, Landroid/app/BarBeamService$1;

    invoke-direct {v0, p0}, Landroid/app/BarBeamService$1;-><init>(Landroid/app/BarBeamService;)V

    iput-object v0, p0, Landroid/app/BarBeamService;->mMsgHandler:Landroid/os/Handler;

    const-string/jumbo v0, "BarBeamService"

    const-string/jumbo v1, "BarBeamService : Create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Landroid/app/BarBeamService;->isRunning:Z

    new-instance v0, Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v1, p0, Landroid/app/BarBeamService;->mMsgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/app/BarBeamService$CheckStatusThread;-><init>(Landroid/app/BarBeamService;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v0, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    invoke-virtual {v0}, Landroid/app/BarBeamService$CheckStatusThread;->start()V

    return-void
.end method

.method private blinkLED()V
    .locals 6

    const-wide/16 v2, 0x1f4

    const-string/jumbo v0, "BarBeamService"

    const-string/jumbo v1, "blinkLED "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/app/BarBeamService;->stopBlinkLED()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/BarBeamService;->swtichLED(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    iget-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    new-instance v1, Landroid/app/BarBeamService$2;

    invoke-direct {v1, p0}, Landroid/app/BarBeamService$2;-><init>(Landroid/app/BarBeamService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private stopBlinkLED()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/BarBeamService;->swtichLED(Z)Z

    return-void
.end method

.method private declared-synchronized swtichLED(Z)Z
    .locals 8

    monitor-enter p0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string/jumbo v5, "/sys/class/sec/led/led_b"

    invoke-direct {v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_2

    :try_start_1
    const-string/jumbo v5, "40"

    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_1
    move-object v2, v3

    :cond_1
    :goto_2
    monitor-exit p0

    return v4

    :cond_2
    :try_start_3
    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_4
    const-string/jumbo v5, "BarBeamService"

    const-string/jumbo v6, "No SvcLED"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_6
    const-string/jumbo v5, "BarBeamService"

    const-string/jumbo v6, "No SvcLED"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit p0

    throw v5

    :catch_2
    move-exception v1

    :try_start_7
    const-string/jumbo v5, "BarBeamService"

    const-string/jumbo v6, "No SvcLED"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_4

    :catch_3
    move-exception v1

    :goto_5
    :try_start_8
    const-string/jumbo v5, "BarBeamService"

    const-string/jumbo v6, "No SvcLED"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catch_4
    move-exception v1

    :try_start_a
    const-string/jumbo v5, "BarBeamService"

    const-string/jumbo v6, "No SvcLED"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catchall_2
    move-exception v5

    :goto_6
    if-eqz v2, :cond_3

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_3
    :goto_7
    :try_start_c
    throw v5

    :catch_5
    move-exception v1

    const-string/jumbo v6, "BarBeamService"

    const-string/jumbo v7, "No SvcLED"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    :catchall_3
    move-exception v5

    move-object v2, v3

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v2, v3

    goto :goto_5
.end method


# virtual methods
.method public addListener(Landroid/os/IBinder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/BarBeamService$Listener;

    iget-object v8, v6, Landroid/app/BarBeamService$Listener;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v8, :cond_0

    monitor-exit v9

    return-void

    :cond_1
    :try_start_1
    new-instance v5, Landroid/app/BarBeamService$Listener;

    invoke-direct {v5, p0, p1}, Landroid/app/BarBeamService$Listener;-><init>(Landroid/app/BarBeamService;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    :try_start_2
    invoke-interface {p1, v5, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {p1}, Landroid/app/IBarBeamListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IBarBeamListener;->getListenerInfo()Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    :goto_0
    :try_start_4
    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v8

    :goto_1
    monitor-exit v9

    throw v8

    :catchall_1
    move-exception v8

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Permission Denial: can\'t dump ConsumerIrService from without permission android.permission.DUMP"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "big_data"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\"BARCODE_USAGE_COUNT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/BarBeamService;->mUseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput v2, p0, Landroid/app/BarBeamService;->mUseCount:I

    :cond_1
    return-void
.end method

.method public getCurrentStatus()Z
    .locals 11

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    const-string/jumbo v8, ""

    sget-boolean v5, Landroid/app/BarBeamService;->SUCCESS:Z

    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string/jumbo v10, "/sys/class/sec/sec_barcode_emul/barcode_led_status"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x400

    invoke-direct {v4, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v7, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v4

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const-string/jumbo v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-boolean v5, Landroid/app/BarBeamService;->SUCCESS:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_2
    monitor-exit p0

    return v5

    :cond_1
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    const-string/jumbo v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-boolean v5, Landroid/app/BarBeamService;->SUCCESS:Z

    :cond_2
    :goto_3
    move-object v3, v4

    goto :goto_2

    :cond_3
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v9

    move-object v3, v4

    :goto_4
    monitor-exit p0

    throw v9

    :catch_2
    move-exception v2

    :goto_5
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_0

    :try_start_7
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const-string/jumbo v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-boolean v5, Landroid/app/BarBeamService;->SUCCESS:Z

    goto :goto_2

    :cond_4
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v9

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_6
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v3, :cond_0

    :try_start_a
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const-string/jumbo v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-boolean v5, Landroid/app/BarBeamService;->SUCCESS:Z

    goto :goto_2

    :cond_5
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    :catch_5
    move-exception v1

    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    :cond_6
    :try_start_c
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    :catch_6
    move-exception v1

    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_2

    :catchall_2
    move-exception v9

    :goto_7
    if-eqz v3, :cond_7

    :try_start_e
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const-string/jumbo v10, "1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    sget-boolean v5, Landroid/app/BarBeamService;->SUCCESS:Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_7
    :goto_8
    :try_start_f
    throw v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_8
    :try_start_10
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_8

    :catch_7
    move-exception v1

    :try_start_11
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_8

    :catchall_3
    move-exception v9

    move-object v3, v4

    goto :goto_7

    :catch_8
    move-exception v0

    goto/16 :goto_1

    :catch_9
    move-exception v1

    move-object v3, v4

    goto :goto_6

    :catch_a
    move-exception v2

    move-object v3, v4

    goto :goto_5
.end method

.method public isImplementationCompatible()Z
    .locals 9

    const-string/jumbo v7, "BarBeamService"

    const-string/jumbo v8, "isImplementationCompatible"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v3, 0x0

    sget-boolean v7, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z

    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    const-string/jumbo v7, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string/jumbo v7, "BarBeamService"

    const-string/jumbo v8, "isImplementationCompatible : Enable barcode_emul_en"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    move-object v5, v6

    :cond_1
    :goto_1
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    const-string/jumbo v7, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    const-string/jumbo v7, "BarBeamService"

    const-string/jumbo v8, "isImplementationCompatible : Enable barcode_send"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_2
    :goto_2
    move-object v3, v4

    :cond_3
    :goto_3
    monitor-exit p0

    sget-boolean v7, Landroid/app/BarBeamService;->result:Z

    return v7

    :catch_0
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    move-object v5, v6

    :goto_4
    monitor-exit p0

    throw v7

    :catch_1
    move-exception v2

    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v5, :cond_1

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    goto :goto_4

    :catch_3
    move-exception v1

    :goto_6
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v5, :cond_1

    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    :catch_4
    move-exception v1

    :try_start_c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_1

    :catch_5
    move-exception v0

    :goto_7
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v5, :cond_1

    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_1

    :catch_6
    move-exception v1

    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_1

    :catchall_2
    move-exception v7

    :goto_8
    if-eqz v5, :cond_4

    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_4
    :goto_9
    :try_start_11
    throw v7

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_9

    :catch_8
    move-exception v1

    :try_start_12
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v7

    move-object v3, v4

    goto :goto_4

    :catch_9
    move-exception v2

    :goto_a
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    if-eqz v3, :cond_3

    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_3

    :catch_a
    move-exception v1

    :try_start_15
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_3

    :catch_b
    move-exception v1

    :goto_b
    :try_start_16
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    if-eqz v3, :cond_3

    :try_start_17
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto :goto_3

    :catch_c
    move-exception v1

    :try_start_18
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto/16 :goto_3

    :catch_d
    move-exception v0

    :goto_c
    :try_start_19
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    if-eqz v3, :cond_3

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_e
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto/16 :goto_3

    :catch_e
    move-exception v1

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto/16 :goto_3

    :catchall_4
    move-exception v7

    :goto_d
    if-eqz v3, :cond_5

    :try_start_1c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :cond_5
    :goto_e
    :try_start_1d
    throw v7

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto :goto_e

    :catchall_5
    move-exception v7

    move-object v3, v4

    goto :goto_d

    :catch_10
    move-exception v0

    move-object v3, v4

    goto :goto_c

    :catch_11
    move-exception v1

    move-object v3, v4

    goto :goto_b

    :catch_12
    move-exception v2

    move-object v3, v4

    goto :goto_a

    :catchall_6
    move-exception v7

    move-object v5, v6

    goto :goto_8

    :catch_13
    move-exception v0

    move-object v5, v6

    goto :goto_7

    :catch_14
    move-exception v1

    move-object v5, v6

    goto/16 :goto_6

    :catch_15
    move-exception v2

    move-object v5, v6

    goto/16 :goto_5
.end method

.method public removeListener(Landroid/os/IBinder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v1, ""

    iget-object v7, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    iget-object v6, v4, Landroid/app/BarBeamService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v6, :cond_0

    move-object v3, v4

    :cond_1
    if-eqz v3, :cond_2

    const/4 v6, 0x0

    invoke-interface {p1, v3, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v6, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Landroid/app/IBarBeamListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IBarBeamListener;->getListenerInfo()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    iget-object v6, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setBarcode([B)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    const-string/jumbo v7, "BarBeamService"

    const-string/jumbo v8, "setBarcode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.samsung.permission.BARCODE_READ"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    array-length v7, p1

    add-int/lit8 v7, v7, 0x3

    new-array v0, v7, [B

    sget-boolean v7, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z

    array-length v7, p1

    add-int/lit8 v7, v7, 0x2

    int-to-byte v7, v7

    iput-byte v7, p0, Landroid/app/BarBeamService;->mBeamLength:B

    const-string/jumbo v7, "BarBeamService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendDataTable length : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, p0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v0, v11

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    const/4 v8, 0x1

    aput-byte v7, v0, v8

    const/4 v4, 0x2

    :goto_0
    array-length v7, p1

    add-int/lit8 v7, v7, 0x2

    if-ge v4, v7, :cond_0

    add-int/lit8 v7, v4, -0x2

    aget-byte v7, p1, v7

    aput-byte v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length v7, p1

    add-int/lit8 v7, v7, 0x2

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v0, v7

    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    const-string/jumbo v7, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    const-string/jumbo v7, "BarBeamService"

    const-string/jumbo v8, "setBarcode is Done!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    move-object v5, v6

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    move-object v5, v6

    :goto_3
    monitor-exit p0

    throw v7

    :catch_1
    move-exception v3

    :goto_4
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    goto :goto_3

    :catch_3
    move-exception v2

    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v5, :cond_2

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_4
    move-exception v2

    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catch_5
    move-exception v1

    :goto_6
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v5, :cond_2

    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    :catch_6
    move-exception v2

    :try_start_c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    :catchall_2
    move-exception v7

    :goto_7
    if-eqz v5, :cond_3

    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_3
    :goto_8
    :try_start_e
    throw v7

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_8

    :catchall_3
    move-exception v7

    move-object v5, v6

    goto :goto_7

    :catch_8
    move-exception v1

    move-object v5, v6

    goto :goto_6

    :catch_9
    move-exception v2

    move-object v5, v6

    goto :goto_5

    :catch_a
    move-exception v3

    move-object v5, v6

    goto :goto_4
.end method

.method public setHopSequence([BII)V
    .locals 16

    const-string/jumbo v13, "BarBeamService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sendHopSequenceTable "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " x "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "com.samsung.permission.BARCODE_READ"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v13, 0x8

    new-array v3, v13, [B

    const/4 v13, 0x2

    new-array v10, v13, [B

    move/from16 v2, p2

    const/4 v8, 0x0

    const/16 v1, -0x7f

    sget-boolean v13, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z

    const/16 v13, -0x80

    const/4 v14, 0x0

    aput-byte v13, v10, v14

    and-int/lit8 v13, p2, 0x1f

    int-to-byte v13, v13

    const/4 v14, 0x1

    aput-byte v13, v10, v14

    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    const-string/jumbo v13, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v12, v10}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v12, :cond_0

    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    move-object v11, v12

    :cond_1
    :goto_1
    monitor-exit p0

    const/4 v7, 0x0

    move-object v12, v11

    :goto_2
    move/from16 v0, p2

    if-ge v7, v0, :cond_6

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x1

    aput-byte v1, v3, v13

    mul-int v13, v7, p3

    aget-byte v13, p1, v13

    const/16 v14, 0x15

    if-le v13, v14, :cond_4

    const-string/jumbo v13, "BarBeamService"

    const-string/jumbo v14, "not supported bw "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v8, 0x1

    const/16 v13, 0x15

    aput-byte v13, v3, v8

    move v8, v9

    :goto_3
    add-int/lit8 v9, v8, 0x1

    mul-int v13, v7, p3

    add-int/lit8 v13, v13, 0x1

    aget-byte v13, p1, v13

    aput-byte v13, v3, v8

    add-int/lit8 v8, v9, 0x1

    mul-int v13, v7, p3

    add-int/lit8 v13, v13, 0x2

    aget-byte v13, p1, v13

    aput-byte v13, v3, v9

    add-int/lit8 v9, v8, 0x1

    mul-int v13, v7, p3

    add-int/lit8 v13, v13, 0x3

    aget-byte v13, p1, v13

    aput-byte v13, v3, v8

    add-int/lit8 v8, v9, 0x1

    mul-int v13, v7, p3

    add-int/lit8 v13, v13, 0x4

    aget-byte v13, p1, v13

    aput-byte v13, v3, v9

    add-int/lit8 v9, v8, 0x1

    mul-int v13, v7, p3

    add-int/lit8 v13, v13, 0x5

    aget-byte v13, p1, v13

    aput-byte v13, v3, v8

    add-int/lit8 v8, v9, 0x1

    mul-int v13, v7, p3

    add-int/lit8 v13, v13, 0x6

    aget-byte v13, p1, v13

    aput-byte v13, v3, v9

    add-int/lit8 v13, v1, 0x7

    int-to-byte v1, v13

    monitor-enter p0

    :try_start_3
    new-instance v11, Ljava/io/FileOutputStream;

    const-string/jumbo v13, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v11, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v11, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v11, :cond_2

    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_2
    :goto_4
    monitor-exit p0

    add-int/lit8 v7, v7, 0x1

    move-object v12, v11

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    move-object v11, v12

    :goto_5
    monitor-exit p0

    throw v13

    :catch_1
    move-exception v6

    :goto_6
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v11, :cond_1

    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    :catch_2
    move-exception v6

    :try_start_9
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v13

    goto :goto_5

    :catch_3
    move-exception v5

    :goto_7
    :try_start_a
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v11, :cond_1

    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    :catch_4
    move-exception v6

    :try_start_c
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_1

    :catch_5
    move-exception v4

    :goto_8
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v11, :cond_1

    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_1

    :catch_6
    move-exception v6

    :try_start_f
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_1

    :catchall_2
    move-exception v13

    :goto_9
    if-eqz v11, :cond_3

    :try_start_10
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_3
    :goto_a
    :try_start_11
    throw v13

    :catch_7
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_a

    :cond_4
    add-int/lit8 v9, v8, 0x1

    mul-int v13, v7, p3

    aget-byte v13, p1, v13

    aput-byte v13, v3, v8

    move v8, v9

    goto/16 :goto_3

    :catch_8
    move-exception v5

    :try_start_12
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v13

    monitor-exit p0

    throw v13

    :catch_9
    move-exception v6

    move-object v11, v12

    :goto_b
    :try_start_13
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v11, :cond_2

    :try_start_14
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_4

    :catch_a
    move-exception v5

    :try_start_15
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto/16 :goto_4

    :catch_b
    move-exception v5

    move-object v11, v12

    :goto_c
    :try_start_16
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    if-eqz v11, :cond_2

    :try_start_17
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto/16 :goto_4

    :catch_c
    move-exception v5

    :try_start_18
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto/16 :goto_4

    :catch_d
    move-exception v4

    move-object v11, v12

    :goto_d
    :try_start_19
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    if-eqz v11, :cond_2

    :try_start_1a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_e
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto/16 :goto_4

    :catch_e
    move-exception v5

    :try_start_1b
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    goto/16 :goto_4

    :catchall_4
    move-exception v13

    move-object v11, v12

    :goto_e
    if-eqz v11, :cond_5

    :try_start_1c
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :cond_5
    :goto_f
    :try_start_1d
    throw v13

    :catch_f
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    goto :goto_f

    :cond_6
    return-void

    :catchall_5
    move-exception v13

    goto :goto_e

    :catch_10
    move-exception v4

    goto :goto_d

    :catch_11
    move-exception v5

    goto :goto_c

    :catch_12
    move-exception v6

    goto :goto_b

    :catchall_6
    move-exception v13

    move-object v11, v12

    goto :goto_9

    :catch_13
    move-exception v4

    move-object v11, v12

    goto/16 :goto_8

    :catch_14
    move-exception v5

    move-object v11, v12

    goto/16 :goto_7

    :catch_15
    move-exception v6

    move-object v11, v12

    goto/16 :goto_6
.end method

.method public startBeaming()V
    .locals 18

    const-string/jumbo v13, "BarBeamService"

    const-string/jumbo v14, "startBeaming"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "com.samsung.permission.BARCODE_READ"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v13, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x2

    new-array v2, v13, [B

    const/4 v13, 0x1

    new-array v6, v13, [C

    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/io/FileWriter;

    const-string/jumbo v13, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v12, v13}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v13, 0x31

    const/4 v14, 0x0

    :try_start_1
    aput-char v13, v6, v14

    invoke-virtual {v12, v6}, Ljava/io/FileWriter;->write([C)V

    invoke-virtual {v12}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    if-eqz v12, :cond_0

    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    move-object v11, v12

    :cond_1
    :goto_1
    const/4 v13, -0x1

    const/4 v14, 0x0

    :try_start_3
    aput-byte v13, v2, v14

    move-object/from16 v0, p0

    iget-byte v13, v0, Landroid/app/BarBeamService;->mBeamLength:B

    const/4 v14, 0x1

    aput-byte v13, v2, v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v10, Ljava/io/FileOutputStream;

    const-string/jumbo v13, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v10, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    invoke-virtual {v10, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    const-string/jumbo v13, "BarBeamService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "startBarBeam : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-byte v15, v0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_12
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-eqz v10, :cond_2

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v7}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v13

    :try_start_8
    monitor-exit v14

    throw v13
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catch_0
    move-exception v5

    :try_start_9
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_2
    :goto_3
    move-object v9, v10

    :cond_3
    :goto_4
    monitor-exit p0

    move-object/from16 v0, p0

    iget v13, v0, Landroid/app/BarBeamService;->mUseCount:I

    const v14, 0x7fffffff

    if-ge v13, v14, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Landroid/app/BarBeamService;->mUseCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/app/BarBeamService;->mUseCount:I

    :cond_4
    return-void

    :catch_1
    move-exception v5

    :try_start_a
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v13

    move-object v11, v12

    :goto_5
    monitor-exit p0

    throw v13

    :catch_2
    move-exception v5

    :goto_6
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v11, :cond_1

    :try_start_c
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_1

    :catch_3
    move-exception v5

    :try_start_d
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v13

    goto :goto_5

    :catch_4
    move-exception v4

    :goto_7
    :try_start_e
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v11, :cond_1

    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_1

    :catch_5
    move-exception v5

    :try_start_10
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_1

    :catch_6
    move-exception v3

    :goto_8
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v11, :cond_1

    :try_start_12
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_1

    :catch_7
    move-exception v5

    :try_start_13
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_1

    :catchall_3
    move-exception v13

    :goto_9
    if-eqz v11, :cond_5

    :try_start_14
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :cond_5
    :goto_a
    :try_start_15
    throw v13

    :catch_8
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto :goto_a

    :cond_6
    :try_start_16
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->notify()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    monitor-exit v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v13, v13, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x0

    const/16 v16, 0x1e

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto/16 :goto_3

    :catchall_4
    move-exception v13

    move-object v9, v10

    goto :goto_5

    :catch_9
    move-exception v5

    :goto_b
    :try_start_18
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    if-eqz v9, :cond_3

    :try_start_19
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v14
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v7}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v13

    :try_start_1b
    monitor-exit v14

    throw v13
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :catch_a
    move-exception v5

    :try_start_1c
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    goto/16 :goto_4

    :cond_8
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->notify()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :try_start_1e
    monitor-exit v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v13, v13, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x0

    const/16 v16, 0x1e

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    goto/16 :goto_4

    :catch_b
    move-exception v4

    :goto_d
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    if-eqz v9, :cond_3

    :try_start_20
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v14
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_c
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    :try_start_21
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v7}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v13

    :try_start_22
    monitor-exit v14

    throw v13
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_c
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    :catch_c
    move-exception v5

    :try_start_23
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    goto/16 :goto_4

    :cond_a
    :try_start_24
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->notify()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    :try_start_25
    monitor-exit v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v13, v13, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x0

    const/16 v16, 0x1e

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    goto/16 :goto_4

    :catch_d
    move-exception v3

    :goto_f
    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    if-eqz v9, :cond_3

    :try_start_27
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v14
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_e
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    :try_start_28
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v7}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception v13

    :try_start_29
    monitor-exit v14

    throw v13
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_e
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    :catch_e
    move-exception v5

    :try_start_2a
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    goto/16 :goto_4

    :cond_c
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->notify()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    :try_start_2c
    monitor-exit v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v13, v13, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x0

    const/16 v16, 0x1e

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_e
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2

    goto/16 :goto_4

    :catchall_8
    move-exception v13

    :goto_11
    if-eqz v9, :cond_e

    :try_start_2d
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v15
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_f
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2

    :try_start_2e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v7}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception v14

    :try_start_2f
    monitor-exit v15

    throw v14
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    :catch_f
    move-exception v5

    :try_start_30
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_13
    throw v13
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2

    :cond_f
    :try_start_31
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->notify()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_9

    :try_start_32
    monitor-exit v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v14, v14, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v16, 0x0

    const/16 v15, 0x1e

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_10
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_f
    .catchall {:try_start_32 .. :try_end_32} :catchall_2

    goto :goto_13

    :catchall_a
    move-exception v13

    move-object v9, v10

    goto :goto_11

    :catch_10
    move-exception v3

    move-object v9, v10

    goto/16 :goto_f

    :catch_11
    move-exception v4

    move-object v9, v10

    goto/16 :goto_d

    :catch_12
    move-exception v5

    move-object v9, v10

    goto/16 :goto_b

    :catchall_b
    move-exception v13

    move-object v11, v12

    goto/16 :goto_9

    :catch_13
    move-exception v3

    move-object v11, v12

    goto/16 :goto_8

    :catch_14
    move-exception v4

    move-object v11, v12

    goto/16 :goto_7

    :catch_15
    move-exception v5

    move-object v11, v12

    goto/16 :goto_6
.end method

.method public startBeaming_repeat(I)V
    .locals 18

    const-string/jumbo v13, "BarBeamService"

    const-string/jumbo v14, "startBeaming_repeat"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ge v0, v13, :cond_0

    const/16 p1, 0x1

    :cond_0
    const/16 v13, 0xff

    move/from16 v0, p1

    if-le v0, v13, :cond_1

    const/16 p1, 0xff

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "com.samsung.permission.BARCODE_READ"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v13, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x2

    new-array v2, v13, [B

    const/4 v13, 0x1

    new-array v6, v13, [C

    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/io/FileWriter;

    const-string/jumbo v13, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v12, v13}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v13, 0x31

    const/4 v14, 0x0

    :try_start_1
    aput-char v13, v6, v14

    invoke-virtual {v12, v6}, Ljava/io/FileWriter;->write([C)V

    invoke-virtual {v12}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    if-eqz v12, :cond_2

    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_0
    move-object v11, v12

    :cond_3
    :goto_1
    const/4 v13, -0x1

    const/4 v14, 0x0

    :try_start_3
    aput-byte v13, v2, v14

    move/from16 v0, p1

    int-to-byte v13, v0

    const/4 v14, 0x1

    aput-byte v13, v2, v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v10, Ljava/io/FileOutputStream;

    const-string/jumbo v13, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v10, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    invoke-virtual {v10, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    const-string/jumbo v13, "BarBeamService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "startBarBeam : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-byte v15, v0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_12
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-eqz v10, :cond_4

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v7}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v13

    :try_start_8
    monitor-exit v14

    throw v13
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catch_0
    move-exception v4

    :try_start_9
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_4
    :goto_3
    move-object v9, v10

    :cond_5
    :goto_4
    monitor-exit p0

    return-void

    :catch_1
    move-exception v4

    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v13

    move-object v11, v12

    :goto_5
    monitor-exit p0

    throw v13

    :catch_2
    move-exception v5

    :goto_6
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v11, :cond_3

    :try_start_c
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_1

    :catch_3
    move-exception v4

    :try_start_d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v13

    goto :goto_5

    :catch_4
    move-exception v4

    :goto_7
    :try_start_e
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v11, :cond_3

    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_1

    :catch_5
    move-exception v4

    :try_start_10
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_1

    :catch_6
    move-exception v3

    :goto_8
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v11, :cond_3

    :try_start_12
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_1

    :catch_7
    move-exception v4

    :try_start_13
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_1

    :catchall_3
    move-exception v13

    :goto_9
    if-eqz v11, :cond_6

    :try_start_14
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :cond_6
    :goto_a
    :try_start_15
    throw v13

    :catch_8
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto :goto_a

    :cond_7
    :try_start_16
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->notify()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    monitor-exit v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v13, v13, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x0

    const/16 v16, 0x1e

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v13

    move-object v9, v10

    goto :goto_5

    :catch_9
    move-exception v5

    :goto_b
    :try_start_18
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    if-eqz v9, :cond_5

    :try_start_19
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v14
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v7}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v13

    :try_start_1b
    monitor-exit v14

    throw v13
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :catch_a
    move-exception v4

    :try_start_1c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    goto/16 :goto_4

    :cond_9
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->notify()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :try_start_1e
    monitor-exit v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v13, v13, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x0

    const/16 v16, 0x1e

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_a
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    goto/16 :goto_4

    :catch_b
    move-exception v4

    :goto_d
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    if-eqz v9, :cond_5

    :try_start_20
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v14
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_c
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    :try_start_21
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v7}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v13

    :try_start_22
    monitor-exit v14

    throw v13
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_c
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    :catch_c
    move-exception v4

    :try_start_23
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    goto/16 :goto_4

    :cond_b
    :try_start_24
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->notify()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    :try_start_25
    monitor-exit v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v13, v13, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x0

    const/16 v16, 0x1e

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_c
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    goto/16 :goto_4

    :catch_d
    move-exception v3

    :goto_f
    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v13, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v13, Landroid/app/BarBeamService;->result:Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    if-eqz v9, :cond_5

    :try_start_27
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v14
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_e
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    :try_start_28
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v7}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception v13

    :try_start_29
    monitor-exit v14

    throw v13
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_e
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    :catch_e
    move-exception v4

    :try_start_2a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    goto/16 :goto_4

    :cond_d
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->notify()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    :try_start_2c
    monitor-exit v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v13, v13, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x0

    const/16 v16, 0x1e

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_e
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_e
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2

    goto/16 :goto_4

    :catchall_8
    move-exception v13

    :goto_11
    if-eqz v9, :cond_f

    :try_start_2d
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v14, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v15
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_f
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2

    :try_start_2e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v7}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception v14

    :try_start_2f
    monitor-exit v15

    throw v14
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    :catch_f
    move-exception v4

    :try_start_30
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_13
    throw v13
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2

    :cond_10
    :try_start_31
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->notify()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_9

    :try_start_32
    monitor-exit v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v14, v14, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v16, 0x0

    const/16 v15, 0x1e

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_11
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_f
    .catchall {:try_start_32 .. :try_end_32} :catchall_2

    goto :goto_13

    :catchall_a
    move-exception v13

    move-object v9, v10

    goto :goto_11

    :catch_10
    move-exception v3

    move-object v9, v10

    goto/16 :goto_f

    :catch_11
    move-exception v4

    move-object v9, v10

    goto/16 :goto_d

    :catch_12
    move-exception v5

    move-object v9, v10

    goto/16 :goto_b

    :catchall_b
    move-exception v13

    move-object v11, v12

    goto/16 :goto_9

    :catch_13
    move-exception v3

    move-object v11, v12

    goto/16 :goto_8

    :catch_14
    move-exception v4

    move-object v11, v12

    goto/16 :goto_7

    :catch_15
    move-exception v5

    move-object v11, v12

    goto/16 :goto_6
.end method

.method public stopBeaming()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v9, "BarBeamService"

    const-string/jumbo v10, "stopBarBeam"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.samsung.permission.BARCODE_READ"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v5, 0x0

    sget-boolean v9, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z

    const/4 v9, 0x2

    new-array v0, v9, [B

    new-array v4, v12, [C

    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/io/FileWriter;

    const-string/jumbo v9, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v9, 0x30

    const/4 v10, 0x0

    :try_start_1
    aput-char v9, v4, v10

    invoke-virtual {v8, v4}, Ljava/io/FileWriter;->write([C)V

    invoke-virtual {v8}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    move-object v7, v8

    :cond_1
    :goto_1
    const/4 v9, -0x1

    const/4 v10, 0x0

    :try_start_3
    aput-byte v9, v0, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-byte v9, v0, v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v6, Ljava/io/FileOutputStream;

    const-string/jumbo v9, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_12
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v6, :cond_2

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_2
    :goto_2
    move-object v5, v6

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :catch_0
    move-exception v3

    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    move-object v7, v8

    :goto_4
    monitor-exit p0

    throw v9

    :catch_1
    move-exception v3

    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v7, :cond_1

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v9

    goto :goto_4

    :catch_3
    move-exception v2

    :goto_6
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v7, :cond_1

    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_1

    :catch_4
    move-exception v3

    :try_start_d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_1

    :catch_5
    move-exception v1

    :goto_7
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v7, :cond_1

    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_1

    :catch_6
    move-exception v3

    :try_start_10
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_1

    :catchall_2
    move-exception v9

    :goto_8
    if-eqz v7, :cond_4

    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_4
    :goto_9
    :try_start_12
    throw v9

    :catch_7
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_9

    :catch_8
    move-exception v3

    :try_start_13
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v9

    move-object v5, v6

    goto :goto_4

    :catch_9
    move-exception v3

    :goto_a
    :try_start_14
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eqz v5, :cond_3

    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_3

    :catch_a
    move-exception v3

    :try_start_16
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_3

    :catch_b
    move-exception v2

    :goto_b
    :try_start_17
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    if-eqz v5, :cond_3

    :try_start_18
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto :goto_3

    :catch_c
    move-exception v3

    :try_start_19
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_3

    :catch_d
    move-exception v1

    :goto_c
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    if-eqz v5, :cond_3

    :try_start_1b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto/16 :goto_3

    :catch_e
    move-exception v3

    :try_start_1c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto/16 :goto_3

    :catchall_4
    move-exception v9

    :goto_d
    if-eqz v5, :cond_5

    :try_start_1d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :cond_5
    :goto_e
    :try_start_1e
    throw v9

    :catch_f
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    goto :goto_e

    :catchall_5
    move-exception v9

    move-object v5, v6

    goto :goto_d

    :catch_10
    move-exception v1

    move-object v5, v6

    goto :goto_c

    :catch_11
    move-exception v2

    move-object v5, v6

    goto :goto_b

    :catch_12
    move-exception v3

    move-object v5, v6

    goto :goto_a

    :catchall_6
    move-exception v9

    move-object v7, v8

    goto :goto_8

    :catch_13
    move-exception v1

    move-object v7, v8

    goto :goto_7

    :catch_14
    move-exception v2

    move-object v7, v8

    goto/16 :goto_6

    :catch_15
    move-exception v3

    move-object v7, v8

    goto/16 :goto_5
.end method
