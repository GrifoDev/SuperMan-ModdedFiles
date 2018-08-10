.class public Lcom/android/internal/alsa/AlsaDevicesParser;
.super Ljava/lang/Object;
.source "AlsaDevicesParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AlsaDevicesParser"

.field private static final kDevicesFilePath:Ljava/lang/String; = "/proc/asound/devices"

.field private static final kEndIndex_CardNum:I = 0x8

.field private static final kEndIndex_DeviceNum:I = 0xb

.field private static final kIndex_CardDeviceField:I = 0x5

.field private static final kStartIndex_CardNum:I = 0x6

.field private static final kStartIndex_DeviceNum:I = 0x9

.field private static final kStartIndex_Type:I = 0xe

.field private static mTokenizer:Lcom/android/internal/alsa/LineTokenizer;


# instance fields
.field private final mDeviceRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHasCaptureDevices:Z

.field private mHasMIDIDevices:Z

.field private mHasPlaybackDevices:Z


# direct methods
.method static synthetic -get0()Lcom/android/internal/alsa/LineTokenizer;
    .locals 1

    sget-object v0, Lcom/android/internal/alsa/AlsaDevicesParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/alsa/LineTokenizer;

    const-string/jumbo v1, " :[]-"

    invoke-direct {v0, v1}, Lcom/android/internal/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/alsa/AlsaDevicesParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z

    iput-boolean v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z

    iput-boolean v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    return-void
.end method

.method private isLineDeviceRecord(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getDefaultDeviceNum(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasCaptureDevices(I)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    return v3
.end method

.method public hasMIDIDevices(I)Z
    .locals 4

    iget-object v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasPlaybackDevices(I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    if-ne v2, v4, :cond_0

    return v4

    :cond_1
    return v3
.end method

.method public scan()V
    .locals 8

    iget-object v7, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "/proc/asound/devices"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string/jumbo v5, ""

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v5}, Lcom/android/internal/alsa/AlsaDevicesParser;->isLineDeviceRecord(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    invoke-direct {v1, p0}, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;-><init>(Lcom/android/internal/alsa/AlsaDevicesParser;)V

    invoke-virtual {v1, v5}, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->parse(Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
