.class public Lcom/android/server/usb/UsbMirrorLinkManager;
.super Ljava/lang/Object;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMirrorLinkManager$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MIRRORLINK_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.TMS_SERVICE_PERMISSION"

.field private static final MIRRORLINK_START_ACTION:Ljava/lang/String; = "com.samsung.android.mirrorlink.action.ML_UEVENT"

.field private static final ML_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.mirrorlink"

.field private static final ML_UEVENT_RECEIVER:Ljava/lang/String; = "com.samsung.android.app.mirrorlink.NcmStartReceiver"

.field private static final NCM_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_ncm"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_DELAY:I = 0x5dc


# instance fields
.field private cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private final mContext:Landroid/content/Context;

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/usb/UsbMirrorLinkManager;Lcom/samsung/android/os/SemDvfsManager;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/usb/UsbMirrorLinkManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager;->sendMLBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/usb/UsbMirrorLinkManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbMirrorLinkManager$1;-><init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mUEventObserver:Landroid/os/UEventObserver;

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "DEVPATH=/devices/virtual/misc/usb_ncm"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method private sendMLBroadcast(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.mirrorlink.action.ML_UEVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.mirrorlink"

    const-string/jumbo v3, "com.samsung.android.app.mirrorlink.NcmStartReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "mirrorlink"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.TMS_SERVICE_PERMISSION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public systemReady()V
    .locals 13

    new-instance v8, Ljava/lang/StringBuffer;

    const-string/jumbo v11, ""

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v11, "/sys/class/android_usb/android0/terminal_version"

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v11, -0x1

    if-eq v0, v11, :cond_2

    int-to-char v11, v0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_1
    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "FileNotFoundException for not opening usb file"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-direct {v9, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "major"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "0"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "minor"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "1"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "explicit systemReady terminal_version : major 0 minor 1"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "START"

    invoke-direct {p0, v11}, Lcom/android/server/usb/UsbMirrorLinkManager;->sendMLBroadcast(Ljava/lang/String;)V

    :cond_0
    :goto_3
    const/4 v9, 0x0

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v3, 0x0

    :cond_1
    :goto_4
    return-void

    :cond_2
    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_5
    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "IOException for not opening usb file"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "minor"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "explicit systemReady terminal_version : major 1 minor"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "START"

    invoke-direct {p0, v11}, Lcom/android/server/usb/UsbMirrorLinkManager;->sendMLBroadcast(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "systemReady major version is not present"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    goto/16 :goto_1

    :catch_4
    move-exception v2

    move-object v3, v4

    goto :goto_5
.end method
