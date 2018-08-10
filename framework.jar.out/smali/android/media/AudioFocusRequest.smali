.class public final Landroid/media/AudioFocusRequest;
.super Ljava/lang/Object;
.source "AudioFocusRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFocusRequest$Builder;
    }
.end annotation


# static fields
.field private static final FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;


# instance fields
.field private final mAttr:Landroid/media/AudioAttributes;

.field private final mFlags:I

.field private final mFocusGain:I

.field private final mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Landroid/media/AudioAttributes;
    .locals 1

    sget-object v0, Landroid/media/AudioFocusRequest;->FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/AudioFocusRequest;)Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/AudioFocusRequest;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    return v0
.end method

.method static synthetic -get3(Landroid/media/AudioFocusRequest;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/AudioFocusRequest;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/media/AudioFocusRequest;->FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;

    return-void
.end method

.method private constructor <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p2, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    iput p4, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    iput-object p3, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    iput p5, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;IILandroid/media/AudioFocusRequest;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/media/AudioFocusRequest;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;II)V

    return-void
.end method

.method static final isValidFocusGain(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public acceptsDelayedFocusGain()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method getFlags()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    return v0
.end method

.method public getFocusGain()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    return v0
.end method

.method public getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method public getOnAudioFocusChangeListenerHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public locksFocus()Z
    .locals 2

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willPauseWhenDucked()Z
    .locals 2

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
