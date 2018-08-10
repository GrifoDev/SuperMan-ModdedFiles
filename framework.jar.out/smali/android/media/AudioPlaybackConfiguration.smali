.class public final Landroid/media/AudioPlaybackConfiguration;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPlaybackConfiguration$1;,
        Landroid/media/AudioPlaybackConfiguration$IPlayerShell;,
        Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final PLAYER_PIID_INVALID:I = -0x1

.field public static final PLAYER_STATE_IDLE:I = 0x1

.field public static final PLAYER_STATE_PAUSED:I = 0x3

.field public static final PLAYER_STATE_RELEASED:I = 0x0

.field public static final PLAYER_STATE_STARTED:I = 0x2

.field public static final PLAYER_STATE_STOPPED:I = 0x4

.field public static final PLAYER_STATE_UNKNOWN:I = -0x1

.field public static final PLAYER_TYPE_AAUDIO:I = 0xd

.field public static final PLAYER_TYPE_EXTERNAL_PROXY:I = 0xf

.field public static final PLAYER_TYPE_HW_SOURCE:I = 0xe

.field public static final PLAYER_TYPE_JAM_AUDIOTRACK:I = 0x1

.field public static final PLAYER_TYPE_JAM_MEDIAPLAYER:I = 0x2

.field public static final PLAYER_TYPE_JAM_SOUNDPOOL:I = 0x3

.field public static final PLAYER_TYPE_SLES_AUDIOPLAYER_BUFFERQUEUE:I = 0xb

.field public static final PLAYER_TYPE_SLES_AUDIOPLAYER_URI_FD:I = 0xc

.field public static final PLAYER_TYPE_UNKNOWN:I = -0x1

.field public static final PLAYER_UPID_INVALID:I = -0x1

.field public static final SEM_PLAYER_STATE_IDLE:I = 0x1

.field public static final SEM_PLAYER_STATE_PAUSED:I = 0x3

.field public static final SEM_PLAYER_STATE_RELEASED:I = 0x0

.field public static final SEM_PLAYER_STATE_STARTED:I = 0x2

.field public static final SEM_PLAYER_STATE_STOPPED:I = 0x4

.field public static final SEM_PLAYER_STATE_UNKNOWN:I = -0x1

.field public static final SEM_PLAYER_TYPE_AAUDIO:I = 0xd

.field public static final SEM_PLAYER_TYPE_EXTERNAL_PROXY:I = 0xf

.field public static final SEM_PLAYER_TYPE_HW_SOURCE:I = 0xe

.field public static final SEM_PLAYER_TYPE_JAM_AUDIOTRACK:I = 0x1

.field public static final SEM_PLAYER_TYPE_JAM_MEDIAPLAYER:I = 0x2

.field public static final SEM_PLAYER_TYPE_JAM_SOUNDPOOL:I = 0x3

.field public static final SEM_PLAYER_TYPE_SLES_AUDIOPLAYER_BUFFERQUEUE:I = 0xb

.field public static final SEM_PLAYER_TYPE_SLES_AUDIOPLAYER_URI_FD:I = 0xc

.field public static final SEM_PLAYER_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field public static sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;


# instance fields
.field private mClientPid:I

.field private mClientUid:I

.field private mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

.field private mPlayerAttr:Landroid/media/AudioAttributes;

.field private final mPlayerIId:I

.field private mPlayerState:I

.field private mPlayerType:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/AudioPlaybackConfiguration;->playerDied()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "AudioPlaybackConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/media/AudioPlaybackConfiguration$1;

    invoke-direct {v0}, Landroid/media/AudioPlaybackConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    return-void
.end method

.method public constructor <init>(Landroid/media/PlayerBase$PlayerIdCard;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    iget v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    iput p3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    iput p4, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    iget-object v1, p1, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    invoke-direct {v0, p0, v1}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;-><init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    return-void

    :cond_0
    new-instance v1, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-direct {v1, v2, v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;-><init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioPlaybackConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioPlaybackConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static anonymizedCopy(Landroid/media/AudioPlaybackConfiguration;)Landroid/media/AudioPlaybackConfiguration;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/media/AudioPlaybackConfiguration;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-direct {v0, v1}, Landroid/media/AudioPlaybackConfiguration;-><init>(I)V

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    iput v1, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    iput v3, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    iput v3, v0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    iput v3, v0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    return-object v0
.end method

.method private playerDied()V
    .locals 2

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-interface {v0, v1}, Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;->playerDeath(I)V

    :cond_0
    return-void
.end method

.method public static toLogFriendlyPlayerState(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "unknown player state - FIXME"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "released"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "idle"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "started"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "paused"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "stopped"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static toLogFriendlyPlayerType(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "unknown player type - FIXME"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "android.media.AudioTrack"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "android.media.MediaPlayer"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "android.media.SoundPool"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "OpenSL ES AudioPlayer (Buffer Queue)"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "OpenSL ES AudioPlayer (URI/FD)"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "AAudio"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "hardware source"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "external proxy"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static toLogFriendlyString(Landroid/media/AudioPlaybackConfiguration;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- u/pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- attr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyString(Landroid/media/AudioPlaybackConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    instance-of v3, p1, Landroid/media/AudioPlaybackConfiguration;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    iget v4, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    iget v4, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    iget v4, v0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    iget v4, v0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getClientPid()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    return v0
.end method

.method public getClientUid()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    return v0
.end method

.method getIPlayer()Landroid/media/IPlayer;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayerInterfaceId()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    return v0
.end method

.method public getPlayerProxy()Landroid/media/PlayerProxy;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/media/PlayerProxy;

    invoke-direct {v0, p0}, Landroid/media/PlayerProxy;-><init>(Landroid/media/AudioPlaybackConfiguration;)V

    goto :goto_0
.end method

.method public getPlayerState()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    return v0
.end method

.method public getPlayerType()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    return v0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z
    .locals 2

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    return v0
.end method

.method public handleStateEvent(I)Z
    .locals 2

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->release()V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->monitorDeath()V

    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public semGetClientPid()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v0

    return v0
.end method

.method public semGetClientUid()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    return v0
.end method

.method public semGetPlayerInterfaceId()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v0

    return v0
.end method

.method public semGetPlayerState()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v0

    return v0
.end method

.method public semGetPlayerType()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v0

    goto :goto_0
.end method
