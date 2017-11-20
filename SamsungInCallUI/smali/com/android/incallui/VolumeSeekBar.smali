.class public Lcom/android/incallui/VolumeSeekBar;
.super Landroid/widget/PopupWindow;


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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/VolumeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VolumeSeekBar;->mIsOpen:Z

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/VolumeSeekBar;->HIDE_VOLUME_BAR:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/incallui/VolumeSeekBar;->HIDE_VOLUME_BAR_DELAY:I

    new-instance v0, Lcom/android/incallui/VolumeSeekBar$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/VolumeSeekBar$1;-><init>(Lcom/android/incallui/VolumeSeekBar;)V

    iput-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/VolumeSeekBar$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/VolumeSeekBar$2;-><init>(Lcom/android/incallui/VolumeSeekBar;)V

    iput-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0b0135

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/incallui/VolumeSeekBar;->init()V

    const-string v0, "create..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/VolumeSeekBar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeIndex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/VolumeSeekBar;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/VolumeSeekBar;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/VolumeSeekBar;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method private getSupportedAudio()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    const v0, 0x7f040135

    invoke-virtual {v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f040136

    invoke-virtual {v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/VolumeSeekBar;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v3, v3}, Lcom/android/incallui/VolumeSeekBar;->setWindowLayoutMode(II)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/VolumeSeekBar;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0202b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/VolumeSeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0, v0}, Lcom/android/incallui/VolumeSeekBar;->setElevation(F)V

    const v0, 0x7f100412

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetMode(I)V

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/incallui/VolumeSeekBar;->getAudioStream()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    :cond_0
    const v0, 0x7f100413

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeIndex:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e024c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/VolumeSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e024b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/VolumeSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    return-void

    :cond_1
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private isAudio(I)Z
    .locals 1

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

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x1

    if-ge p2, v2, :cond_1

    const-string v1, "Set force progress level 1 for call volume"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move p2, v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1, p2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void

    :cond_1
    if-le p2, v1, :cond_0

    const-string v2, "Set force progress level max for call volume"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move p2, v1

    goto :goto_0
.end method

.method private updateUI()V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeIndex:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioStream()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->invalidate()V

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeIndex:Landroid/widget/TextView;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method


# virtual methods
.method public decreaseVolume()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioStream()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VolumeSeekBar;->setVolume(II)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VolumeSeekBar;->mIsOpen:Z

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getAudioStream()I
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, v2}, Lcom/android/incallui/VolumeSeekBar;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/incallui/VolumeSeekBar;->isAudio(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public increaseVolume()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioStream()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VolumeSeekBar;->setVolume(II)V

    return-void
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/VolumeSeekBar;->mIsOpen:Z

    return v0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 4

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/VolumeSeekBar;->updateUI()V

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/VolumeSeekBar;->mIsOpen:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public showBelow(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v0, v5

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0190

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v1, v1

    float-to-int v0, v0

    invoke-virtual {p0, p2, v5, v1, v0}, Lcom/android/incallui/VolumeSeekBar;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
