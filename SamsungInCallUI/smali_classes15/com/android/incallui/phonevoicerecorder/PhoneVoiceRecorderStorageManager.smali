.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;
.super Landroid/os/HandlerThread;
.source "PhoneVoiceRecorderStorageManager.java"


# static fields
.field private static final CHECK_DEALY_TIME_MILL:I = 0x3e8

.field private static final CHECK_STORAGE_AUTO_RECORDING:I = 0x3ed

.field private static final CHECK_STORAGE_MANUAL_RECORDING:I = 0x3ea

.field private static final LIMIT_REMAINED_STORAGE_SIZE_FOR_AUTORECORD:I = 0x1f4

.field private static final LIMIT_REMAINED_STORAGE_SIZE_FOR_MANUALRECORD:I = 0x28

.field public static final RECORD_TYPE_AUTO:I = 0x1

.field public static final RECORD_TYPE_MANUAL:I = 0x2

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


# virtual methods
.method public checkStorage(I)V
    .locals 4

    const-wide/16 v2, 0x3e8

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clearStorageChkMsg()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hasEnoughStorage(I)Z
    .locals 8

    const-wide/16 v6, 0x400

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getAvailableExternalMemorySize()J

    move-result-wide v4

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    const-wide/16 v6, 0x14

    add-long v0, v4, v6

    const-string v3, "RecorderStorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileManager.getAvailableExternalMemorySize() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "RecorderStorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileManager.getAvailableExternalMemorySize() limitation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v4, v2

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :pswitch_0
    const/16 v2, 0x1f4

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x28

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
