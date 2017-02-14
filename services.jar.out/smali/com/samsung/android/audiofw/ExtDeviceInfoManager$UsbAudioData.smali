.class Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;
.super Ljava/lang/Object;
.source "ExtDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbAudioData"
.end annotation


# instance fields
.field private cardNumber:Ljava/lang/String;

.field private channels:Ljava/lang/String;

.field private deviceNumber:Ljava/lang/String;

.field private format:I

.field private hascapture:Z

.field private hasmidi:Z

.field private hasplayback:Z

.field private isSmartDock:Z

.field private samplingRate2:Ljava/lang/String;

.field private samplingRate24:I

.field private samplingRate6:Ljava/lang/String;

.field private state:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;-><init>()V

    return-void
.end method


# virtual methods
.method public get24Format()I
    .locals 3

    const/4 v2, 0x4

    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->channels:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->deviceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getHasCapture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hascapture:Z

    return v0
.end method

.method public getHasMIDI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hasmidi:Z

    return v0
.end method

.method public getHasPlayback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hasplayback:Z

    return v0
.end method

.method public getIsSmartdock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->isSmartDock:Z

    return v0
.end method

.method public getSamplingRate(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate2:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate6:Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingRate24()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate24:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->state:I

    return v0
.end method

.method public getSupportedPCMFormat()I
    .locals 6

    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    if-ne v0, v1, :cond_0

    return v5

    :cond_0
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    if-ne v0, v3, :cond_2

    :cond_1
    const/16 v0, 0x18

    return v0

    :cond_2
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x2

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_4

    :cond_3
    const/16 v0, 0x28

    return v0

    :cond_4
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x8

    if-eq v0, v4, :cond_3

    :cond_5
    return v5
.end method

.method public setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZII)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->state:I

    iput-object p2, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->channels:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate6:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->cardNumber:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->deviceNumber:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->isSmartDock:Z

    iput-boolean p8, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hasplayback:Z

    iput-boolean p9, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hascapture:Z

    iput-boolean p10, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hasmidi:Z

    iput p11, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    iput p12, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate24:I

    return-void
.end method
