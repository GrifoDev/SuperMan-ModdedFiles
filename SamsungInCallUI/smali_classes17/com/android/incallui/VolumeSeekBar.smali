.class public Lcom/android/incallui/VolumeSeekBar;
.super Landroid/widget/PopupWindow;
.source "VolumeSeekBar.java"


# instance fields
.field private DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

.field private final HIDE_VOLUME_BAR:I

.field private final HIDE_VOLUME_BAR_DELAY:I

.field private OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsOpen:Z

.field private mVolumeIndex:Landroid/widget/TextView;

.field private mVolumeSeekBar:Landroid/widget/SeekBar;

.field private final mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/VolumeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VolumeSeekBar;->mIsOpen:Z

    .line 34
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/VolumeSeekBar;->HIDE_VOLUME_BAR:I

    .line 35
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/incallui/VolumeSeekBar;->HIDE_VOLUME_BAR_DELAY:I

    .line 40
    new-instance v0, Lcom/android/incallui/VolumeSeekBar$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/VolumeSeekBar$1;-><init>(Lcom/android/incallui/VolumeSeekBar;)V

    iput-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Lcom/android/incallui/VolumeSeekBar$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/VolumeSeekBar$2;-><init>(Lcom/android/incallui/VolumeSeekBar;)V

    iput-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 62
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0b011f

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/android/incallui/VolumeSeekBar;->init()V

    .line 64
    const-string v0, "create..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/VolumeSeekBar;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/VolumeSeekBar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/VolumeSeekBar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/VolumeSeekBar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeIndex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/VolumeSeekBar;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/VolumeSeekBar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/VolumeSeekBar;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/VolumeSeekBar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/VolumeSeekBar;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/VolumeSeekBar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 93
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 94
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private getAudioMode()I
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method private getSupportedAudio()I
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 68
    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 70
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    .line 71
    const v2, 0x7f040114

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 73
    .local v1, "rootView":Landroid/view/ViewGroup;
    invoke-virtual {p0, v1}, Lcom/android/incallui/VolumeSeekBar;->setContentView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0, v4, v4}, Lcom/android/incallui/VolumeSeekBar;->setWindowLayoutMode(II)V

    .line 75
    invoke-virtual {p0, v5}, Lcom/android/incallui/VolumeSeekBar;->setFocusable(Z)V

    .line 76
    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02022e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/VolumeSeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0, v2}, Lcom/android/incallui/VolumeSeekBar;->setElevation(F)V

    .line 79
    const v2, 0x7f100371

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    .line 80
    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 82
    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 83
    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/incallui/VolumeSeekBar;->getAudioStream()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 84
    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    .line 86
    :cond_0
    const v2, 0x7f100372

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeIndex:Landroid/widget/TextView;

    .line 88
    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/VolumeSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    .line 89
    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/VolumeSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    .line 90
    return-void
.end method

.method private isAudio(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/incallui/VolumeSeekBar;->getAudioMode()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupported(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/incallui/VolumeSeekBar;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setVolume(II)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "volume"    # I

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 219
    .local v0, "maxVolume":I
    const/4 v1, 0x1

    if-ge p2, v1, :cond_1

    .line 220
    const-string v1, "Set force progress level 1 for call volume"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    const/4 p2, 0x0

    .line 226
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 227
    return-void

    .line 222
    :cond_1
    if-le p2, v0, :cond_0

    .line 223
    const-string v1, "Set force progress level max for call volume"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    move p2, v0

    goto :goto_0
.end method

.method private updateUI()V
    .locals 8

    .prologue
    .line 131
    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeIndex:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioStream()I

    move-result v1

    .line 135
    .local v1, "stream":I
    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 136
    .local v2, "volume":I
    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 138
    .local v0, "maxVolume":I
    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 139
    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 140
    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->invalidate()V

    .line 141
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v2, v0, :cond_2

    .line 142
    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/android/incallui/VolumeSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 143
    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/android/incallui/VolumeSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 148
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeIndex:Landroid/widget/TextView;

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/android/incallui/VolumeSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 146
    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/android/incallui/VolumeSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method


# virtual methods
.method public decreaseVolume()V
    .locals 3

    .prologue
    .line 212
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioStream()I

    move-result v0

    .line 213
    .local v0, "stream":I
    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 214
    .local v1, "volume":I
    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VolumeSeekBar;->setVolume(II)V

    .line 215
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VolumeSeekBar;->mIsOpen:Z

    .line 248
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 250
    return-void
.end method

.method public getAudioStream()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "stream":I
    invoke-direct {p0, v2}, Lcom/android/incallui/VolumeSeekBar;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/incallui/VolumeSeekBar;->isAudio(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    .line 202
    :cond_0
    return v0
.end method

.method public increaseVolume()V
    .locals 3

    .prologue
    .line 206
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioStream()I

    move-result v0

    .line 207
    .local v0, "stream":I
    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 208
    .local v1, "volume":I
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VolumeSeekBar;->setVolume(II)V

    .line 209
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/incallui/VolumeSeekBar;->mIsOpen:Z

    return v0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 118
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v0

    .line 119
    .local v0, "isAllSoundOff":Z
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/VolumeSeekBar;->updateUI()V

    .line 124
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/VolumeSeekBar;->mIsOpen:Z

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public showBelow(Landroid/view/View;Landroid/view/View;)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 102
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 106
    .local v4, "position":[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 108
    aget v5, v4, v8

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    add-float v0, v5, v6

    .line 109
    .local v0, "locationX":F
    const/4 v5, 0x1

    aget v5, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v2, v5

    .line 110
    .local v2, "locationY":F
    iget-object v5, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0198

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    div-float/2addr v5, v7

    sub-float v1, v0, v5

    .line 111
    .local v1, "locationXToShow":F
    iget-object v5, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0197

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    add-float v3, v2, v5

    .line 113
    .local v3, "locationYToShow":F
    float-to-int v5, v1

    float-to-int v6, v3

    invoke-virtual {p0, p2, v8, v5, v6}, Lcom/android/incallui/VolumeSeekBar;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
