.class public Lcom/android/server/usb/UsbMonitorImpl;
.super Ljava/lang/Object;
.source "UsbMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMonitorImpl$1;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final MAX_LOG_FILESIZE:J = 0x19000L

.field static final READ_USB_STATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "UsbMonitorService"

.field private static final USB_STATISTICS_LOG_PATH:Ljava/lang/String; = "/efs/usb_hw_param/usb_hw_param.log"

.field private static final USB_STATISTICS_SYSFS_PATH:Ljava/lang/String; = "/sys/class/usb_notify/usb_control/usb_hw_param"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLogFile:Ljava/io/File;

.field private mState:Ljava/lang/String;

.field private mSysFs:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/usb/UsbMonitorImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbMonitorImpl$1;-><init>(Lcom/android/server/usb/UsbMonitorImpl;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mState:Ljava/lang/String;

    const-string/jumbo v0, "UsbMonitorImpl()"

    invoke-static {v0}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    return-void
.end method

.method private static dbgPrint(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "UsbMonitorService"

    invoke-static {v0, p0}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readSysFsFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readSysFsFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static stringToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stringToFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string/jumbo v0, "Current UsbMonitor state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method postReadUsbMsg(J)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method readUsbState()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl;->mSysFs:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbMonitorImpl;->readSysFsFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl;->mState:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl;->mState:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl;->mLogFile:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mState:Ljava/lang/String;

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbMonitorImpl;->postReadUsbMsg(J)V

    return-void
.end method

.method public systemReady()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/efs/usb_hw_param/usb_hw_param.log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mLogFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/usb_notify/usb_control/usb_hw_param"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mSysFs:Ljava/io/File;

    const-string/jumbo v0, "systemReady()"

    invoke-static {v0}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mSysFs:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "systemReady() there is no /sys/class/usb_notify/usb_control/usb_hw_param , motitor function will be of"

    invoke-static {v0}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "systemReady() initial state, nothing in the log"

    invoke-static {v0}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mSysFs:Ljava/io/File;

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbMonitorImpl;->readUsbState()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mSysFs:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl;->mLogFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbMonitorImpl;->readSysFsFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method
