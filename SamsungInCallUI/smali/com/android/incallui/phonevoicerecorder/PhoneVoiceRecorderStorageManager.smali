.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;
.super Landroid/os/HandlerThread;


# static fields
.field public static final AUTO_RECORD_TYPE:I = 0x1

.field private static final CHECK_DEALY_TIME_MILL:I = 0x3e8

.field private static final LIMIT_REMAINED_STORAGE_SIZE_FOR_AUTORECORD:I = 0x1f4

.field private static final LIMIT_REMAINED_STORAGE_SIZE_FOR_MANUALRECORD:I = 0x28

.field public static final MANUAL_RECORD_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RecorderStorageManager"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;


# direct methods
.method public constructor <init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V
    .locals 1

    const-string v0, "PhoneVoiceRecorderStorageManager"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getAvailableExternalMemorySize()J
    .locals 4

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public checkStorage(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public clearStorageChkMsg()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public hasEnoughStorage(I)Z
    .locals 7

    const-wide/16 v4, 0x400

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->getAvailableExternalMemorySize()J

    move-result-wide v2

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x14

    add-long/2addr v2, v4

    const-string v4, "RecorderStorageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileManager.getAvailableExternalMemorySize() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "RecorderStorageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileManager.getAvailableExternalMemorySize() limitation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :pswitch_0
    const/16 v0, 0x1f4

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x28

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
