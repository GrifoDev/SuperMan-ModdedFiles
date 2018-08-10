.class public Lcom/android/internal/telephony/cat/CatEventDownload;
.super Ljava/lang/Object;
.source "CatEventDownload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatEventDownload$1;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/CatEventDownload;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_ACCESS_TECHNOLOGY_CHANGE:I = 0xb

.field public static final EVENT_BROWSER_TERMINATION:I = 0x8

.field public static final EVENT_BROWSING_STATUS:I = 0xf

.field public static final EVENT_CALL_CONNECTED:I = 0x1

.field public static final EVENT_CALL_DISCONNECTED:I = 0x2

.field public static final EVENT_CARD_READER_STATUS:I = 0x6

.field public static final EVENT_CHANNEL_STATUS:I = 0xa

.field public static final EVENT_DATA_AVAILABLE:I = 0x9

.field public static final EVENT_DISPLAY_PARAMETERS_CHANGE:I = 0xc

.field public static final EVENT_FRAMES_INFORMATION_CHANGE:I = 0x10

.field public static final EVENT_IDLE_SCREEN_AVAILABLE:I = 0x5

.field public static final EVENT_IMS_REGISTRATION:I = 0x17

.field public static final EVENT_LENGUAGE_SELECTION:I = 0x7

.field public static final EVENT_LOCAL_CONNECTION:I = 0xd

.field public static final EVENT_LOCATION_STATUS:I = 0x3

.field public static final EVENT_MT_CALL:I = 0x0

.field public static final EVENT_NETWORK_REJECTION:I = 0x12

.field public static final EVENT_NETWORK_SEARCH_MODE_CHANGE:I = 0xe

.field public static final EVENT_NOTHING:I = 0xfe

.field public static final EVENT_REMOVE:I = 0xff

.field public static final EVENT_USER_ACTIVITY:I = 0x4

.field public static final MAX_EVENTS_NUM:I = 0x19

.field public static final STK_EVENT_ACTION:Ljava/lang/String; = "com.samsung.intent.internal.stk.event"

.field public static final TERMINATED_BY_ERROR:I = 0x1

.field public static final TERMINATED_BY_USER:I


# instance fields
.field private mBrowserTerminationCause:I

.field private mEvent:I

.field private mIMPUlist:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mPhoneid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/cat/CatEventDownload$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatEventDownload$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatEventDownload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfe

    iput v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mEvent:I

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mLanguage:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mBrowserTerminationCause:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mPhoneid:I

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mIMPUlist:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatEventDownload;->setEvent(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfe

    iput v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mEvent:I

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mLanguage:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mBrowserTerminationCause:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mPhoneid:I

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mIMPUlist:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatEventDownload;->setEvent(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cat/CatEventDownload;->setBrowserTerminationCause(I)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfe

    iput v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mEvent:I

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mLanguage:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mBrowserTerminationCause:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mPhoneid:I

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mIMPUlist:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatEventDownload;->setEvent(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cat/CatEventDownload;->setPhoneid(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/cat/CatEventDownload;->setImsRegiImpuList(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfe

    iput v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mEvent:I

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mLanguage:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mBrowserTerminationCause:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mPhoneid:I

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mIMPUlist:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatEventDownload;->setEvent(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cat/CatEventDownload;->setLenguage(Ljava/lang/String;)V

    return-void
.end method

.method public static isMonitoringEvent(II)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "gsm.sim.eventList"

    if-lez p0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    shl-int v4, v2, p1

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBrowserTerminationCause()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mBrowserTerminationCause:I

    return v0
.end method

.method public getEvent()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mEvent:I

    return v0
.end method

.method public getImsRegiImpuList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mIMPUlist:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneid()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mPhoneid:I

    return v0
.end method

.method public setBrowserTerminationCause(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mBrowserTerminationCause:I

    return-void
.end method

.method public setEvent(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mEvent:I

    return-void
.end method

.method public setImsRegiImpuList(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mIMPUlist:Ljava/lang/String;

    return-void
.end method

.method public setLenguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mLanguage:Ljava/lang/String;

    return-void
.end method

.method public setPhoneid(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mPhoneid:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mBrowserTerminationCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mPhoneid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatEventDownload;->mIMPUlist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
