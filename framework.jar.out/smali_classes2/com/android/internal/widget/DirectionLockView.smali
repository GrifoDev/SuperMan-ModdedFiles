.class public Lcom/android/internal/widget/DirectionLockView;
.super Landroid/widget/RelativeLayout;
.source "DirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DirectionLockView$1;,
        Lcom/android/internal/widget/DirectionLockView$Direction;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-widget-DirectionLockView$DirectionSwitchesValues:[I

.field public static DEFAULT_ARROW_SIZE:I

.field private static DIRECTION_TOLERANCE_ANGLE:D

.field public static FOUR_CONFIGURATION_MODE:Z


# instance fields
.field private ARROW_SIZE:I

.field private REFERENCE_SQUARE_DIMENSION:I

.field private SETTINGS_APP:Z

.field private TAG:Ljava/lang/String;

.field private final TTS_DEFAULT_RATE_STRING:Ljava/lang/String;

.field _TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private currentErrorResId:I

.field private isParentArrowSize:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAllow:Z

.field private mAllowDouble:Z

.field mBeepEast:Landroid/media/MediaPlayer;

.field mBeepNorth:Landroid/media/MediaPlayer;

.field mBeepSouth:Landroid/media/MediaPlayer;

.field mBeepWest:Landroid/media/MediaPlayer;

.field private mBlankBitmap:Landroid/graphics/Bitmap;

.field private mBottomY:D

.field private mCurBitmap:Landroid/graphics/Bitmap;

.field private mCurrentPassword:Ljava/lang/String;

.field private mCurrentPasswordNumbers:Ljava/lang/String;

.field private mDirectionBitmapDown:Landroid/graphics/Bitmap;

.field private mDirectionBitmapLeft:Landroid/graphics/Bitmap;

.field private mDirectionBitmapRight:Landroid/graphics/Bitmap;

.field private mDirectionBitmapUp:Landroid/graphics/Bitmap;

.field private mDirectionDetected:Z

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mDownAnnounce:Ljava/lang/String;

.field private final mDownChar:C

.field private final mDownNumber:I

.field private mErrorBitmap:Landroid/graphics/Bitmap;

.field private mForceRestart:Z

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInsideReferenceSquare:Z

.field private mLeftAnnounce:Ljava/lang/String;

.field private final mLeftChar:C

.field private final mLeftNumber:I

.field private mLeftX:D

.field private mParentArrowSize:I

.field private mPlayBeep:Z

.field private mPlayVibration:Z

.field private mPlayVoice:Z

.field private mRightAnnounce:Ljava/lang/String;

.field private final mRightChar:C

.field private final mRightNumber:I

.field private mRightX:D

.field private mScreenHeight:D

.field private mScreenWidth:D

.field private mShowArrow:Z

.field private mSquare_size:D

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTopY:D

.field private mTradeSpace:D

.field private mUpAnnounce:Ljava/lang/String;

.field private final mUpChar:C

.field private final mUpNumber:I

.field private mVibratePattern:I

.field private final mVibration_pattern_down:I

.field private final mVibration_pattern_left:I

.field private final mVibration_pattern_right:I

.field private final mVibration_pattern_up:I

.field private mVibrator:Landroid/os/Vibrator;

.field myContext:Landroid/content/Context;


# direct methods
.method private static synthetic -getcom-android-internal-widget-DirectionLockView$DirectionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/widget/DirectionLockView;->-com-android-internal-widget-DirectionLockView$DirectionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/widget/DirectionLockView;->-com-android-internal-widget-DirectionLockView$DirectionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/widget/DirectionLockView$Direction;->values()[Lcom/android/internal/widget/DirectionLockView$Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN:Lcom/android/internal/widget/DirectionLockView$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->UP:Lcom/android/internal/widget/DirectionLockView$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/internal/widget/DirectionLockView;->-com-android-internal-widget-DirectionLockView$DirectionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    const-wide v0, 0x4056800000000000L    # 90.0

    sput-wide v0, Lcom/android/internal/widget/DirectionLockView;->DIRECTION_TOLERANCE_ANGLE:D

    .line 113
    const/16 v0, 0xb6

    sput v0, Lcom/android/internal/widget/DirectionLockView;->DEFAULT_ARROW_SIZE:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DirectionLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/DirectionLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v4, 0xc36f

    const v3, 0xc36b

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const-string/jumbo v0, "DirectionLockView"

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    .line 62
    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 63
    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    .line 69
    iput-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->SETTINGS_APP:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    .line 80
    iput v2, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    iput v2, p0, Lcom/android/internal/widget/DirectionLockView;->currentErrorResId:I

    .line 82
    const-string/jumbo v0, "tts_default_rate"

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TTS_DEFAULT_RATE_STRING:Ljava/lang/String;

    .line 86
    const/16 v0, 0x55

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mUpChar:C

    .line 88
    const/16 v0, 0x44

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDownChar:C

    .line 90
    const/16 v0, 0x4c

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftChar:C

    .line 92
    const/16 v0, 0x52

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightChar:C

    .line 94
    const/16 v0, 0x31

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mUpNumber:I

    .line 96
    const/16 v0, 0x39

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftNumber:I

    .line 98
    const/16 v0, 0x33

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightNumber:I

    .line 100
    const/16 v0, 0x37

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDownNumber:I

    .line 111
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->REFERENCE_SQUARE_DIMENSION:I

    .line 125
    iput v3, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_up:I

    .line 126
    iput v3, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_down:I

    .line 127
    iput v4, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_right:I

    .line 128
    iput v4, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_left:I

    .line 328
    new-instance v0, Lcom/android/internal/widget/DirectionLockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DirectionLockView$1;-><init>(Lcom/android/internal/widget/DirectionLockView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 169
    iput-object p1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    .line 170
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->initDirectionLockView()V

    .line 167
    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 1219
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1220
    .local v2, "height":I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1221
    .local v4, "width":I
    const/4 v3, 0x1

    .line 1223
    .local v3, "inSampleSize":I
    if-gt v2, p3, :cond_0

    if-le v4, p2, :cond_1

    .line 1225
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 1226
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 1231
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p3, :cond_1

    div-int v5, v1, v3

    if-le v5, p2, :cond_1

    .line 1232
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1236
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method private calculateTradeSpace(DD)D
    .locals 7
    .param p1, "sqaure_size"    # D
    .param p3, "toleranceAngle"    # D

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 729
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in calculateTradeSpace()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    .line 731
    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    .line 732
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    .line 733
    const-wide/16 v0, 0x0

    return-wide v0

    .line 735
    :cond_0
    div-double v0, p1, v4

    div-double v2, p3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double v4, p1, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private createReferenceSquare(DDZ)V
    .locals 9
    .param p1, "eventX"    # D
    .param p3, "eventY"    # D
    .param p5, "doScreenCorrection"    # Z

    .prologue
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/16 v6, 0x0

    .line 775
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in createReferenceSquare()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    sub-double v0, p1, v0

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    .line 777
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    sub-double v0, p3, v0

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    .line 778
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    .line 779
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    .line 781
    if-eqz p5, :cond_1

    .line 782
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpg-double v0, v0, v6

    if-gez v0, :cond_2

    .line 783
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    .line 784
    iput-wide v6, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    .line 790
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpg-double v0, v0, v6

    if-gez v0, :cond_3

    .line 791
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    .line 792
    iput-wide v6, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    .line 799
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eventX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " eventY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mLeftX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  mRightX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mBottomY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 801
    const-string/jumbo v2, " mTopY = "

    .line 800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 801
    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    .line 800
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void

    .line 785
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 786
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    .line 787
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    goto/16 :goto_0

    .line 793
    :cond_3
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 794
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    .line 795
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    goto/16 :goto_1
.end method

.method private dipToPixels(D)D
    .locals 5
    .param p1, "dipValue"    # D

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 248
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    double-to-float v1, p1

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-double v2, v1

    return-wide v2
.end method

.method private freeBitmapMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1147
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in freeBitmapMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1151
    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    .line 1154
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->releaseDirectionBitmaps()V

    .line 1156
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1158
    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1162
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1163
    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    .line 1146
    :cond_2
    return-void
.end method

.method private getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I

    .prologue
    const/4 v8, 0x1

    .line 1169
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBitmapFromResource start  reqWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " reqHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1170
    const-string/jumbo v7, "  resid:"

    .line 1169
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1173
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1174
    invoke-static {p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1177
    invoke-direct {p0, v2, p3, p4}, Lcom/android/internal/widget/DirectionLockView;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1180
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1182
    const/4 v4, 0x0

    .line 1185
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1187
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 1188
    nop

    nop

    invoke-virtual {v5}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1197
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v3, 0x0

    .line 1198
    .local v3, "returnBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 1200
    const/4 v5, 0x1

    :try_start_0
    invoke-static {v4, p3, p4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1204
    .local v3, "returnBitmap":Landroid/graphics/Bitmap;
    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_1

    .line 1205
    return-object v3

    .line 1190
    .end local v3    # "returnBitmap":Landroid/graphics/Bitmap;
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1206
    .restart local v3    # "returnBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1207
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getBitmapFromResource recycle"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1209
    .end local v3    # "returnBitmap":Landroid/graphics/Bitmap;
    :goto_1
    const/4 v4, 0x0

    .line 1213
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getBitmapFromResource End"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return-object v3

    .line 1201
    .local v3, "returnBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 1202
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_3

    .line 1205
    return-object v3

    .line 1206
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1207
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getBitmapFromResource recycle"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 1203
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 1204
    instance-of v6, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v6, :cond_4

    .line 1205
    return-object v3

    .line 1206
    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1207
    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getBitmapFromResource recycle"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1209
    const/4 v4, 0x0

    .line 1203
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_5
    throw v5
.end method

.method private getDirectionImageView(IIZI)Landroid/widget/ImageView;
    .locals 5
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I
    .param p3, "useMargins"    # Z
    .param p4, "arrowSize"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 692
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in getDirectionImageView()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v1, :cond_0

    .line 694
    iput p4, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 698
    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    .line 701
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 703
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p3, :cond_2

    .line 704
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 705
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 706
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 711
    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    .line 712
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 715
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v1

    .line 708
    :cond_2
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private initDirectionLockView()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    .line 560
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in initDirectinLockView()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    .line 563
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    const-string/jumbo v2, "com.samsung.SMT.KEY_PARAM"

    const-string/jumbo v3, "DISABLE_NOTICE_POPUP"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->refreshScreenDimensions()V

    .line 566
    invoke-virtual {p0}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView()Landroid/widget/ImageView;

    .line 568
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 569
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 575
    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    .line 581
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    .line 584
    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mAllow:Z

    .line 586
    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    .line 587
    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    .line 588
    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    .line 589
    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    .line 592
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1100009

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    .line 593
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1100006

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    .line 594
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1100008

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    .line 595
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1100007

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    .line 597
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 600
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 601
    const-string/jumbo v2, "tts_default_rate"

    const/16 v3, 0x64

    .line 600
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 602
    .local v0, "mDefaultRate":I
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTextToSpeech Rate - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 605
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040872

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mUpAnnounce:Ljava/lang/String;

    .line 606
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040875

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDownAnnounce:Ljava/lang/String;

    .line 607
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040874

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftAnnounce:Ljava/lang/String;

    .line 608
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040873

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mRightAnnounce:Ljava/lang/String;

    .line 610
    iget v1, p0, Lcom/android/internal/widget/DirectionLockView;->REFERENCE_SQUARE_DIMENSION:I

    int-to-double v2, v1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/DirectionLockView;->dipToPixels(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    .line 611
    iput-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    .line 612
    iput-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    .line 613
    iput-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    .line 614
    iput-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    .line 617
    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    sget-wide v4, Lcom/android/internal/widget/DirectionLockView;->DIRECTION_TOLERANCE_ANGLE:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/internal/widget/DirectionLockView;->calculateTradeSpace(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    .line 618
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tradeSpace ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    .line 622
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    .line 623
    const-string/jumbo v2, "accessibility"

    .line 622
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 625
    invoke-virtual {p0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 626
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040877

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 558
    return-void
.end method

.method private isVibrationSupport()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1046
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    const/4 v0, 0x1

    return v0

    :cond_0
    move v0, v1

    .line 1046
    goto :goto_0

    .line 1047
    :cond_1
    return v1
.end method

.method private loadDirectionBitmaps(I)V
    .locals 7
    .param p1, "arrowSize"    # I

    .prologue
    .line 1113
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in loadDirectionBitmaps()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const/4 v1, 0x0

    .local v1, "resIDLeft":I
    const/4 v0, 0x0

    .local v0, "resIDDown":I
    const/4 v3, 0x0

    .local v3, "resIDUp":I
    const/4 v2, 0x0

    .line 1116
    .local v2, "resIDRight":I
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v4, :cond_0

    .end local p1    # "arrowSize":I
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    .line 1118
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->SETTINGS_APP:Z

    if-nez v4, :cond_1

    .line 1120
    const v1, 0x10802b9

    .line 1121
    const v2, 0x10802ba

    .line 1122
    const v3, 0x10802bb

    .line 1123
    const v0, 0x10802b8

    .line 1132
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1133
    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    .line 1132
    invoke-direct {p0, v4, v1, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    .line 1134
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1135
    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    .line 1134
    invoke-direct {p0, v4, v2, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    .line 1136
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    .line 1137
    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    .line 1136
    invoke-direct {p0, v4, v3, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    .line 1138
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1139
    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    .line 1138
    invoke-direct {p0, v4, v0, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    .line 1111
    return-void

    .line 1116
    .restart local p1    # "arrowSize":I
    :cond_0
    int-to-double v4, p1

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/DirectionLockView;->dipToPixels(D)D

    move-result-wide v4

    double-to-int p1, v4

    goto :goto_0

    .line 1126
    .end local p1    # "arrowSize":I
    :cond_1
    const v1, 0x10802be

    .line 1127
    const v2, 0x10802c0

    .line 1128
    const v3, 0x10802c2

    .line 1129
    const v0, 0x10802bc

    goto :goto_1
.end method

.method private refreshScreenDimensions()V
    .locals 6

    .prologue
    .line 744
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in refreshScreenDimensions()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 746
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 748
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    .line 749
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    .line 750
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in refreshScreenDimensions() mScreenWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 751
    const-string/jumbo v3, " mScreenHeight = "

    .line 750
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 751
    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    .line 750
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void
.end method

.method private releaseDirectionBitmaps()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1241
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1243
    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1248
    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    .line 1251
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1252
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1253
    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    .line 1256
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1257
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1258
    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    .line 1239
    :cond_3
    return-void
.end method


# virtual methods
.method public clearScreen()V
    .locals 4

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 183
    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    double-to-int v2, v2

    .line 184
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 183
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPasswordNumbers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    return-object v0
.end method

.method getDirection(DDDDDD)Lcom/android/internal/widget/DirectionLockView$Direction;
    .locals 7
    .param p1, "curX"    # D
    .param p3, "curY"    # D
    .param p5, "leftX"    # D
    .param p7, "rightX"    # D
    .param p9, "topY"    # D
    .param p11, "bottomY"    # D

    .prologue
    .line 821
    iget-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDirection() curX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " curY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " leftX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 822
    const-string/jumbo v5, " rightX ="

    .line 821
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 822
    const-string/jumbo v5, " topY = "

    .line 821
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 822
    const-string/jumbo v5, " bottomY = "

    .line 821
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    .line 826
    .local v2, "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_2

    cmpl-double v3, p1, p7

    if-ltz v3, :cond_2

    cmpg-double v3, p3, p9

    if-gtz v3, :cond_2

    .line 827
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    .line 850
    :cond_0
    :goto_0
    sget-object v3, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    if-eq v2, v3, :cond_1

    .line 851
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    .line 853
    :cond_1
    return-object v2

    .line 829
    :cond_2
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_3

    cmpg-double v3, p1, p5

    if-gtz v3, :cond_3

    cmpg-double v3, p3, p9

    if-gtz v3, :cond_3

    .line 830
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    .line 832
    :cond_3
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_4

    cmpl-double v3, p1, p7

    if-ltz v3, :cond_4

    cmpl-double v3, p3, p11

    if-ltz v3, :cond_4

    .line 833
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    .line 835
    :cond_4
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_5

    cmpg-double v3, p1, p5

    if-gtz v3, :cond_5

    cmpl-double v3, p3, p11

    if-ltz v3, :cond_5

    .line 836
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    .line 838
    :cond_5
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_6

    cmpg-double v3, p1, p7

    if-gtz v3, :cond_7

    cmpl-double v3, p1, p5

    if-ltz v3, :cond_7

    :cond_6
    cmpg-double v3, p3, p9

    if-gez v3, :cond_7

    .line 839
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->UP:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    .line 841
    :cond_7
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_8

    cmpg-double v3, p1, p7

    if-gtz v3, :cond_9

    cmpl-double v3, p1, p5

    if-ltz v3, :cond_9

    :cond_8
    cmpl-double v3, p3, p11

    if-lez v3, :cond_9

    .line 842
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    .line 844
    :cond_9
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_a

    cmpg-double v3, p3, p11

    if-gtz v3, :cond_b

    cmpl-double v3, p3, p9

    if-ltz v3, :cond_b

    :cond_a
    cmpl-double v3, p1, p7

    if-lez v3, :cond_b

    .line 845
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    .line 847
    :cond_b
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_c

    cmpg-double v3, p3, p11

    if-gtz v3, :cond_0

    cmpl-double v3, p3, p9

    if-ltz v3, :cond_0

    :cond_c
    cmpg-double v3, p1, p5

    if-gez v3, :cond_0

    .line 848
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0
.end method

.method public getDirectionImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 642
    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    .line 643
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "arrowSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    .line 655
    invoke-direct {p0, v1, v1, v1, p1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(II)Landroid/widget/ImageView;
    .locals 2
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    const/4 v1, 0x0

    .line 668
    iput-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    .line 669
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(III)Landroid/widget/ImageView;
    .locals 1
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I
    .param p3, "arrowSize"    # I

    .prologue
    const/4 v0, 0x1

    .line 682
    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    .line 683
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method handleDirectionEvent(Lcom/android/internal/widget/DirectionLockView$Direction;Z)V
    .locals 12
    .param p1, "direction"    # Lcom/android/internal/widget/DirectionLockView$Direction;
    .param p2, "allowDouble"    # Z

    .prologue
    const v11, 0xc36f

    const v10, 0xc36b

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 877
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "in handleDirectionEvent()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iput-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    .line 885
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    const/4 v2, 0x1

    .line 892
    .local v2, "lengthCondition":Z
    :goto_0
    const/4 v1, 0x0

    .line 899
    .local v1, "lastDirectionCondition":Z
    if-eqz v2, :cond_7

    const/4 v0, 0x0

    .line 902
    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " detected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iput-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 904
    iput v9, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    .line 905
    const-string/jumbo v3, ""

    .line 906
    .local v3, "mCurrentDirection":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/widget/DirectionLockView;->-getcom-android-internal-widget-DirectionLockView$DirectionSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1020
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Invalid Direction !"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_0
    :goto_2
    if-nez v2, :cond_1

    if-nez p2, :cond_1

    if-eqz v1, :cond_20

    .line 1026
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v5, :cond_2

    .line 1027
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1029
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->isVibrationSupport()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1030
    iput-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    .line 1031
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    if-lez v4, :cond_4

    .line 1032
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    .line 1033
    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    .line 1032
    invoke-virtual {v4, v5, v9, v8, v6}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 1036
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v4, :cond_5

    .line 1037
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    .line 1038
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    .line 1037
    invoke-interface {v4, v3, v5}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    .line 876
    :cond_5
    :goto_3
    return-void

    .end local v1    # "lastDirectionCondition":Z
    .end local v2    # "lengthCondition":Z
    .end local v3    # "mCurrentDirection":Ljava/lang/String;
    :cond_6
    move v2, v4

    .line 885
    goto :goto_0

    .line 899
    .restart local v1    # "lastDirectionCondition":Z
    .restart local v2    # "lengthCondition":Z
    :cond_7
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "lastDirectionChar":C
    goto :goto_1

    .line 908
    .end local v0    # "lastDirectionChar":C
    .restart local v3    # "mCurrentDirection":Ljava/lang/String;
    :pswitch_1
    const/16 v5, 0x55

    if-eq v5, v0, :cond_d

    const/4 v1, 0x1

    .line 909
    :goto_4
    if-nez v2, :cond_8

    if-nez p2, :cond_8

    if-eqz v1, :cond_0

    .line 911
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 912
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 914
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v5, :cond_9

    .line 915
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mUpAnnounce:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 919
    :cond_9
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v5, :cond_a

    .line 920
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 923
    :cond_a
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v5, :cond_b

    .line 924
    iput v10, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    .line 927
    :cond_b
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v5, :cond_c

    .line 928
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 931
    :cond_c
    const-string/jumbo v3, "UP"

    goto/16 :goto_2

    .line 908
    :cond_d
    const/4 v1, 0x0

    goto :goto_4

    .line 936
    :pswitch_2
    const/16 v5, 0x52

    if-eq v5, v0, :cond_13

    const/4 v1, 0x1

    .line 937
    :goto_5
    if-nez v2, :cond_e

    if-nez p2, :cond_e

    if-eqz v1, :cond_0

    .line 939
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "R"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 940
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 942
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v5, :cond_f

    .line 943
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mRightAnnounce:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 947
    :cond_f
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v5, :cond_10

    .line 948
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 951
    :cond_10
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v5, :cond_11

    .line 952
    iput v11, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    .line 955
    :cond_11
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v5, :cond_12

    .line 956
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 959
    :cond_12
    const-string/jumbo v3, "RIGHT"

    goto/16 :goto_2

    .line 936
    :cond_13
    const/4 v1, 0x0

    goto :goto_5

    .line 964
    :pswitch_3
    const/16 v5, 0x44

    if-eq v5, v0, :cond_19

    const/4 v1, 0x1

    .line 965
    :goto_6
    if-nez v2, :cond_14

    if-nez p2, :cond_14

    if-eqz v1, :cond_0

    .line 967
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "D"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 968
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 970
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v5, :cond_15

    .line 971
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mDownAnnounce:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 975
    :cond_15
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v5, :cond_16

    .line 976
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 979
    :cond_16
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v5, :cond_17

    .line 980
    iput v10, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    .line 983
    :cond_17
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v5, :cond_18

    .line 984
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 987
    :cond_18
    const-string/jumbo v3, "DOWN"

    goto/16 :goto_2

    .line 964
    :cond_19
    const/4 v1, 0x0

    goto :goto_6

    .line 992
    :pswitch_4
    const/16 v5, 0x4c

    if-eq v5, v0, :cond_1f

    const/4 v1, 0x1

    .line 993
    :goto_7
    if-nez v2, :cond_1a

    if-nez p2, :cond_1a

    if-eqz v1, :cond_0

    .line 995
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 996
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "9"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 998
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v5, :cond_1b

    .line 999
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftAnnounce:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1003
    :cond_1b
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v5, :cond_1c

    .line 1004
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 1007
    :cond_1c
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v5, :cond_1d

    .line 1008
    iput v11, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    .line 1011
    :cond_1d
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v5, :cond_1e

    .line 1012
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 1015
    :cond_1e
    const-string/jumbo v3, "LEFT"

    goto/16 :goto_2

    .line 992
    :cond_1f
    const/4 v1, 0x0

    goto :goto_7

    .line 1041
    :cond_20
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ignored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 906
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1287
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1288
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in onAttached()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v1, :cond_0

    .line 1290
    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    .line 1291
    .local v0, "arrowSize":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->loadDirectionBitmaps(I)V

    .line 1286
    .end local v0    # "arrowSize":I
    :cond_0
    return-void

    .line 1290
    :cond_1
    sget v0, Lcom/android/internal/widget/DirectionLockView;->DEFAULT_ARROW_SIZE:I

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->refreshScreenDimensions()V

    .line 863
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 857
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1303
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1304
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in onDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->freeBitmapMemory()V

    .line 1308
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1310
    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 1314
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1317
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1318
    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    .line 1321
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    .line 1322
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1323
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1325
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1326
    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    .line 1329
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    .line 1330
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1331
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1333
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1334
    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    .line 1337
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    .line 1338
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1339
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1341
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1342
    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    .line 1302
    :cond_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "in onTouchEvent()"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 346
    const/4 v3, 0x0

    return v3

    .line 348
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v8, 0x3

    if-eq v3, v8, :cond_1

    .line 349
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v8, 0x1

    if-ne v3, v8, :cond_3

    .line 351
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "in onTouchEvent() ACTION_UP or ACTION_CANCEL called"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v3, :cond_2

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    .line 354
    const-string/jumbo v8, "FINGER_LIFT"

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    .line 353
    invoke-interface {v3, v8, v9}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    .line 356
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    .line 357
    const/4 v3, 0x1

    return v3

    .line 360
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v3, :cond_4

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-interface {v3}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionStarted()V

    .line 363
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_5

    .line 365
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-double v4, v3

    .local v4, "curX":D
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-double v6, v3

    .line 367
    .local v6, "curY":D
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 548
    .end local v4    # "curX":D
    .end local v6    # "curY":D
    :cond_5
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 376
    .restart local v4    # "curX":D
    .restart local v6    # "curY":D
    :pswitch_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    .line 384
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    .line 391
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/DirectionLockView;->createReferenceSquare(DDZ)V

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "in onTouchEvent() ACTION_DOWN called"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    .line 395
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    goto :goto_0

    .line 404
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    if-nez v3, :cond_5

    .line 405
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    if-eqz v3, :cond_1a

    .line 411
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAllow:Z

    if-eqz v3, :cond_5

    .line 413
    const/16 v16, 0x0

    .line 414
    .local v16, "insideTradeArea":Z
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_7

    .line 415
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_a

    .line 416
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpg-double v3, v4, v8

    if-gez v3, :cond_a

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_a

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    .line 417
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    .line 416
    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_9

    const/16 v19, 0x1

    .line 418
    .local v19, "isTradeNorthEast":Z
    :goto_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpl-double v3, v6, v8

    if-lez v3, :cond_c

    .line 419
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_c

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_c

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    .line 420
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    .line 419
    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_b

    const/16 v17, 0x1

    .line 421
    .local v17, "isTradeEastNorth":Z
    :goto_2
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpg-double v3, v6, v8

    if-gez v3, :cond_e

    .line 422
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_e

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_e

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    .line 423
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    .line 422
    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_d

    const/16 v18, 0x1

    .line 424
    .local v18, "isTradeEastSouth":Z
    :goto_3
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_10

    .line 425
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpg-double v3, v4, v8

    if-gez v3, :cond_10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    .line 426
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    .line 425
    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_f

    const/16 v21, 0x1

    .line 427
    .local v21, "isTradeSouthEast":Z
    :goto_4
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_12

    .line 428
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_12

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_12

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    .line 429
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    .line 428
    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_11

    const/16 v22, 0x1

    .line 430
    .local v22, "isTradeSouthWest":Z
    :goto_5
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_14

    .line 431
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_14

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpg-double v3, v6, v8

    if-gez v3, :cond_14

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    .line 432
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    .line 431
    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_13

    const/16 v24, 0x1

    .line 433
    .local v24, "isTradeWestSouth":Z
    :goto_6
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_16

    .line 434
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_16

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_16

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    .line 435
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    .line 434
    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_15

    const/16 v23, 0x1

    .line 436
    .local v23, "isTradeWestNorth":Z
    :goto_7
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_18

    .line 437
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_18

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_18

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    .line 438
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    .line 437
    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_17

    const/16 v20, 0x1

    .line 445
    .local v20, "isTradeNorthWest":Z
    :goto_8
    if-nez v19, :cond_6

    if-nez v17, :cond_6

    if-nez v18, :cond_6

    if-nez v21, :cond_6

    if-nez v22, :cond_6

    if-nez v24, :cond_6

    if-nez v23, :cond_6

    if-eqz v20, :cond_7

    .line 449
    :cond_6
    const/16 v16, 0x1

    .line 457
    .end local v17    # "isTradeEastNorth":Z
    .end local v18    # "isTradeEastSouth":Z
    .end local v19    # "isTradeNorthEast":Z
    .end local v20    # "isTradeNorthWest":Z
    .end local v21    # "isTradeSouthEast":Z
    .end local v22    # "isTradeSouthWest":Z
    .end local v23    # "isTradeWestNorth":Z
    .end local v24    # "isTradeWestSouth":Z
    :cond_7
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    .line 458
    .local v2, "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    if-nez v16, :cond_8

    .line 459
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    .line 460
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    move-object/from16 v3, p0

    .line 459
    invoke-virtual/range {v3 .. v15}, Lcom/android/internal/widget/DirectionLockView;->getDirection(DDDDDD)Lcom/android/internal/widget/DirectionLockView$Direction;

    move-result-object v2

    .line 462
    :cond_8
    invoke-static {}, Lcom/android/internal/widget/DirectionLockView;->-getcom-android-internal-widget-DirectionLockView$DirectionSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v3, v3, v8

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 510
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/DirectionLockView;->handleDirectionEvent(Lcom/android/internal/widget/DirectionLockView$Direction;Z)V

    .line 517
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/DirectionLockView;->createReferenceSquare(DDZ)V

    .line 528
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    goto/16 :goto_0

    .line 416
    .end local v2    # "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    :cond_9
    const/16 v19, 0x0

    .restart local v19    # "isTradeNorthEast":Z
    goto/16 :goto_1

    .line 415
    .end local v19    # "isTradeNorthEast":Z
    :cond_a
    const/16 v19, 0x0

    .restart local v19    # "isTradeNorthEast":Z
    goto/16 :goto_1

    .line 419
    :cond_b
    const/16 v17, 0x0

    .restart local v17    # "isTradeEastNorth":Z
    goto/16 :goto_2

    .line 418
    .end local v17    # "isTradeEastNorth":Z
    :cond_c
    const/16 v17, 0x0

    .restart local v17    # "isTradeEastNorth":Z
    goto/16 :goto_2

    .line 422
    :cond_d
    const/16 v18, 0x0

    .restart local v18    # "isTradeEastSouth":Z
    goto/16 :goto_3

    .line 421
    .end local v18    # "isTradeEastSouth":Z
    :cond_e
    const/16 v18, 0x0

    .restart local v18    # "isTradeEastSouth":Z
    goto/16 :goto_3

    .line 425
    :cond_f
    const/16 v21, 0x0

    .restart local v21    # "isTradeSouthEast":Z
    goto/16 :goto_4

    .line 424
    .end local v21    # "isTradeSouthEast":Z
    :cond_10
    const/16 v21, 0x0

    .restart local v21    # "isTradeSouthEast":Z
    goto/16 :goto_4

    .line 428
    :cond_11
    const/16 v22, 0x0

    .restart local v22    # "isTradeSouthWest":Z
    goto/16 :goto_5

    .line 427
    .end local v22    # "isTradeSouthWest":Z
    :cond_12
    const/16 v22, 0x0

    .restart local v22    # "isTradeSouthWest":Z
    goto/16 :goto_5

    .line 431
    :cond_13
    const/16 v24, 0x0

    .restart local v24    # "isTradeWestSouth":Z
    goto/16 :goto_6

    .line 430
    .end local v24    # "isTradeWestSouth":Z
    :cond_14
    const/16 v24, 0x0

    .restart local v24    # "isTradeWestSouth":Z
    goto/16 :goto_6

    .line 434
    :cond_15
    const/16 v23, 0x0

    .restart local v23    # "isTradeWestNorth":Z
    goto/16 :goto_7

    .line 433
    .end local v23    # "isTradeWestNorth":Z
    :cond_16
    const/16 v23, 0x0

    .restart local v23    # "isTradeWestNorth":Z
    goto/16 :goto_7

    .line 437
    :cond_17
    const/16 v20, 0x0

    .restart local v20    # "isTradeNorthWest":Z
    goto/16 :goto_8

    .line 436
    .end local v20    # "isTradeNorthWest":Z
    :cond_18
    const/16 v20, 0x0

    .restart local v20    # "isTradeNorthWest":Z
    goto/16 :goto_8

    .line 470
    .end local v17    # "isTradeEastNorth":Z
    .end local v18    # "isTradeEastSouth":Z
    .end local v19    # "isTradeNorthEast":Z
    .end local v20    # "isTradeNorthWest":Z
    .end local v21    # "isTradeSouthEast":Z
    .end local v22    # "isTradeSouthWest":Z
    .end local v23    # "isTradeWestNorth":Z
    .end local v24    # "isTradeWestSouth":Z
    .restart local v2    # "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "in onTouchEvent() Diagonal Detected"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 486
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-nez v3, :cond_19

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    .line 486
    if-eqz v3, :cond_19

    .line 498
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v3, :cond_5

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    .line 501
    const-string/jumbo v8, "DIAGONAL"

    .line 502
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    .line 500
    invoke-interface {v3, v8, v9}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 542
    .end local v2    # "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    .end local v16    # "insideTradeArea":Z
    :cond_1a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    goto/16 :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 462
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public reloadBitmap()V
    .locals 3

    .prologue
    .line 1269
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in reloadBitmap()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->releaseDirectionBitmaps()V

    .line 1273
    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v1, :cond_0

    .line 1274
    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    .line 1275
    .local v0, "arrowSize":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->loadDirectionBitmaps(I)V

    .line 1268
    .end local v0    # "arrowSize":I
    :cond_0
    return-void

    .line 1274
    :cond_1
    sget v0, Lcom/android/internal/widget/DirectionLockView;->DEFAULT_ARROW_SIZE:I

    goto :goto_0
.end method

.method public resetPassword()V
    .locals 1

    .prologue
    .line 259
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 260
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setAllow(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in setAllow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mAllow:Z

    .line 760
    return-void
.end method

.method public setCurrentPassword(Ljava/lang/String;)V
    .locals 3
    .param p1, "givenPassword"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 294
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 296
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    .line 302
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x37

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    .line 305
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x39

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    .line 308
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    .line 292
    :cond_0
    return-void

    .line 297
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x4c -> :sswitch_2
        0x52 -> :sswitch_3
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method public setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/DirectionLockTouchListener;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    .line 323
    return-void
.end method

.method public setPlayBeep(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    .line 234
    return-void
.end method

.method public setPlayVibration(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    .line 212
    return-void
.end method

.method public setPlayVoice(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    .line 223
    return-void
.end method

.method public setSettingsMode()V
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->SETTINGS_APP:Z

    .line 630
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    .line 201
    return-void
.end method

.method public showDirectionArrow(C)V
    .locals 2
    .param p1, "direction"    # C

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in showDirectionArrow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/16 v0, 0x55

    if-ne p1, v0, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    const/16 v0, 0x4c

    if-ne p1, v0, :cond_2

    .line 1058
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1059
    :cond_2
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    .line 1060
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1061
    :cond_3
    const/16 v0, 0x44

    if-ne p1, v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public showErrorImage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1075
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in showErrorImage()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    .line 1077
    const/4 v0, 0x0

    .line 1079
    .local v0, "resIDError":I
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v1, :cond_4

    .line 1081
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1082
    const v0, 0x10802bf

    .line 1091
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/widget/DirectionLockView;->currentErrorResId:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 1092
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1093
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1094
    iput-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    .line 1097
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1098
    iget v2, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v3, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    .line 1097
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    .line 1100
    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->currentErrorResId:I

    .line 1104
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1073
    :cond_4
    return-void

    .line 1083
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1084
    const v0, 0x10802c1

    goto :goto_0

    .line 1085
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1086
    const v0, 0x10802c3

    goto :goto_0

    .line 1087
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    const v0, 0x10802bd

    goto :goto_0
.end method
