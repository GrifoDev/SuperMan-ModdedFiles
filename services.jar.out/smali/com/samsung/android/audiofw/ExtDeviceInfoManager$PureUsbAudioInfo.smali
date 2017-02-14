.class Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
.super Ljava/lang/Object;
.source "ExtDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PureUsbAudioInfo"
.end annotation


# instance fields
.field private channels:I

.field private format:Ljava/lang/String;

.field private isPlayback:Z

.field private rates:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->isPlayback:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->isPlayback:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;-><init>()V

    return-void
.end method
