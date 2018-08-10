.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.super Landroid/widget/RelativeLayout;
.source "SoundModeTileVolumeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$2;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;
    }
.end annotation


# static fields
.field private static final ALPHA_DISABLE:I = 0x66

.field private static final ALPHA_ENABLE:I = 0xff

.field private static final DEBUG:Z

.field private static final DEFAULT_VOLUME_URI_BIXBY:Ljava/lang/String; = "file:///system/media/audio/ui/Bixby_BOS.ogg"

.field private static final DEFAULT_VOLUME_URI_MUSIC:Ljava/lang/String; = "file:///system/media/audio/ui/Media_preview_Over_the_horizon.ogg"

.field private static final ICONS_COLOR_EARSHORK:I = 0x2

.field private static final ICONS_COLOR_MUTE:I = 0x1

.field private static final ICONS_COLOR_NORMAL:I = 0x0

.field private static final ICONS_RES_TYPE_BLUETOOTH:I = 0x3

.field private static final ICONS_RES_TYPE_CALL:I = 0x4

.field private static final ICONS_RES_TYPE_MUTE:I = 0x2

.field private static final ICONS_RES_TYPE_SOUND:I = 0x0

.field private static final ICONS_RES_TYPE_VIBRATE:I = 0x1

.field private static final STREAM_ICONS_COLOR:[I

.field private static final STREAM_ICONS_RES:[I

.field private static final TAG:Ljava/lang/String; = "SoundModeTileVolumeBar"


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

.field private mContext:Landroid/content/Context;

.field private mEarProtectLevel:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMuted:Z

.field public mSeekBar:Landroid/widget/SeekBar;

.field private final mSeekBarVolumizerCallback:Landroid/preference/SeekBarVolumizer$Callback;

.field private mStream:I

.field private mThumbDisabledColor:Landroid/content/res/ColorStateList;

.field private mThumbEnabledColor:Landroid/content/res/ColorStateList;

.field public mTitleView:Landroid/widget/TextView;

.field private mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

.field private mZenMuted:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mMuted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mZenMuted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mMuted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mZenMuted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isMusicStream()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isRingtoneStream()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->requestAudioFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->handleUpdateBarViews()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->handleUpdateDualColorSeekbar()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->DEBUG:Z

    const v0, 0x1080a8c

    const v1, 0x1080a94

    const v2, 0x1080a79

    const v3, 0x1080a75

    const v4, 0x1080a77

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_RES:[I

    const v0, 0x7f06021f

    const v1, 0x7f060223

    const v2, 0x7f060221

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_COLOR:[I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBarVolumizerCallback:Landroid/preference/SeekBarVolumizer$Callback;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    return-void
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

.method private getDefaultVolumeUri()Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isMusicStream()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "file:///system/media/audio/ui/Media_preview_Over_the_horizon.ogg"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    sget v2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAM_BIXBY_VOICE:I

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "file:///system/media/audio/ui/Bixby_BOS.ogg"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private getIconType(II)I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isRingtoneStream()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p2, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    if-ne p2, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isMusicStream()Z

    move-result v1

    if-eqz v1, :cond_5

    if-lez p1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    invoke-interface {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->isEnableZenMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    if-ne p2, v4, :cond_7

    if-lez p1, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    :cond_7
    if-ne p2, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    if-nez p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_9
    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    if-ne v1, v3, :cond_c

    if-ne p2, v4, :cond_b

    if-lez p1, :cond_a

    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    const/4 v0, 0x2

    goto :goto_0

    :cond_b
    const/4 v0, 0x2

    goto :goto_0

    :cond_c
    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    sget v2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAM_BIXBY_VOICE:I

    if-ne v1, v2, :cond_e

    if-lez p1, :cond_d

    const/4 v0, 0x0

    goto :goto_0

    :cond_d
    const/4 v0, 0x2

    goto :goto_0

    :cond_e
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleUpdateBarViews()V
    .locals 9

    const/4 v7, 0x2

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-direct {p0, v5, v4}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->getIconType(II)I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    sget-object v6, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_RES:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isMusicStream()Z

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v3, :cond_2

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    invoke-interface {v5}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->isEnableZenMode()Z

    move-result v2

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    const/16 v5, 0xff

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mTitleView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mEarProtectLevel:I

    if-lt v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_COLOR:[I

    aget v6, v6, v7

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    const/16 v5, 0x66

    goto :goto_1

    :cond_6
    const v5, 0x3ecccccd    # 0.4f

    goto :goto_2

    :cond_7
    if-ne v1, v7, :cond_9

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_COLOR:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_8

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mThumbEnabledColor:Landroid/content/res/ColorStateList;

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_COLOR:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_a

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mThumbEnabledColor:Landroid/content/res/ColorStateList;

    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_a
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    goto :goto_5
.end method

.method private handleUpdateDualColorSeekbar()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isMusicStream()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SoundModeTileVolumeBar"

    const-string/jumbo v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateDualColorSeekbar set dual. EarProtectLimitIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mEarProtectLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mEarProtectLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mEarProtectLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->invalidate()V

    return-void

    :cond_6
    const-string/jumbo v2, "handleUpdateDualColorSeekbar set single"

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SeekBar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    if-nez v0, :cond_1

    const-string/jumbo v0, "No stream found, or Voice calling...... not binding volumizer"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    invoke-interface {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->getCurrentUserContextForSample()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->getDefaultVolumeUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBarVolumizerCallback:Landroid/preference/SeekBarVolumizer$Callback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;->start()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.sec.android.fm.player_lock.status.off"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.sec.android.fm.player_lock.status.on"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060291

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mThumbEnabledColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060292

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    const/16 v1, 0xd9c

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isMusicStream()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isRingtoneStream()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->isSettingAllSoundMute()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;->stop()V

    :cond_5
    return-void
.end method

.method private isMusicStream()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRingtoneStream()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SoundModeTileVolumeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private requestAudioFocus()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    invoke-interface {v4}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->isVoiceCalling()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v2, "isVoIP and isVoiceCall is true so can not request audioFocus"

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return v3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v6, 0x3

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    :goto_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->init()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;->stop()V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVolumeChangeReceiver of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a04f2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a04f1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0a04f0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06021f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mEarProtectLevel:I

    return-void
.end method

.method public setStream(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    return-void
.end method

.method public setVolumeBarCallback(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    return-void
.end method

.method public updateBarViews()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    const/16 v1, 0xd9c

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(I)V

    return-void
.end method
