.class public Lcom/samsung/android/widget/SemColorPicker;
.super Landroid/widget/LinearLayout;
.source "SemColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemColorPicker$1;,
        Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;,
        Lcom/samsung/android/widget/SemColorPicker$PickedColor;
    }
.end annotation


# static fields
.field static final RECENT_COLOR_SLOT_COUNT:I = 0x6

.field private static final RIPPLE_EFFECT_OPACITY:I = 0x3d

.field private static final TAG:Ljava/lang/String; = "SemColorPicker"

.field static sIsDeviceDefaultDark:Z


# instance fields
.field private mColorDescription:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentColorView:Landroid/widget/ImageView;

.field private mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

.field private mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

.field private final mImageButtonClickListener:Landroid/view/View$OnClickListener;

.field private mIsInputFromUser:Z

.field private mIsOpacityBarEnabled:Z

.field private mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

.field private mOpacitySeekBar:Lcom/samsung/android/widget/SemOpacitySeekBar;

.field private mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

.field private mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

.field private mPickedColorView:Landroid/widget/ImageView;

.field private final mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

.field private mRecentColorListLayout:Landroid/widget/LinearLayout;

.field private final mRecentColorValues:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemGradientColorSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemOpacitySeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBar:Lcom/samsung/android/widget/SemOpacitySeekBar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemColorPicker;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemColorPicker;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemColorPicker;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemColorPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemColorPicker;->mIsInputFromUser:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemColorPicker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemColorPicker;->mapColorOnColorWheel(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemColorPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->updateCurrentColor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mIsInputFromUser:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mIsOpacityBarEnabled:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mColorDescription:[Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/widget/SemColorPicker$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemColorPicker$1;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1110083

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    :goto_0
    sput-boolean v1, Lcom/samsung/android/widget/SemColorPicker;->sIsDeviceDefaultDark:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090100

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-direct {v1}, Lcom/samsung/android/widget/SemRecentColorInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->getRecentColorInfo()Ljava/util/LinkedList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->init()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-direct {v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initCurrentColorView()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initGradientColorSeekBar()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initOpacitySeekBar()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initGradientColorWheel()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initRecentColorLayout()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->updateCurrentColor()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->setInitialColors()V

    return-void
.end method

.method private initCurrentColorView()V
    .locals 13

    const/4 v12, 0x0

    const-wide v10, 0x3ff3333340000000L    # 1.2000000476837158

    const v7, 0x102046b

    invoke-virtual {p0, v7}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    const v7, 0x1020474

    invoke-virtual {p0, v7}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    const v7, 0x102046a

    invoke-virtual {p0, v7}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v7, 0x1020473

    invoke-virtual {p0, v7}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v3, 0x3f99999a    # 1.2f

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v2, v7, Landroid/content/res/Configuration;->fontScale:F

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v8, 0x10501ed

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    const v7, 0x3f99999a    # 1.2f

    cmpl-float v7, v2, v7

    if-lez v7, :cond_0

    int-to-float v7, v6

    div-float/2addr v7, v2

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v7, v8

    invoke-virtual {v1, v12, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    int-to-float v7, v6

    div-float/2addr v7, v2

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v7, v8

    invoke-virtual {v5, v12, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const v7, 0x1020469

    invoke-virtual {p0, v7}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v7, 0x1020472

    invoke-virtual {p0, v7}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    iput-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v8}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v8, 0x1040932

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v8, 0x1040935

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initGradientColorSeekBar()V
    .locals 4

    const v1, 0x102046c

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemGradientColorSeekBar;

    iput-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    const v1, 0x102046d

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->init(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    new-instance v2, Lcom/samsung/android/widget/SemColorPicker$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemColorPicker$3;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    new-instance v2, Lcom/samsung/android/widget/SemColorPicker$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemColorPicker$4;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x104092a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040939

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040933

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initGradientColorWheel()V
    .locals 4

    const v0, 0x102046e

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemGradientColorWheel;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemGradientColorWheel;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    new-instance v1, Lcom/samsung/android/widget/SemColorPicker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemColorPicker$2;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemGradientColorWheel;->setOnColorWheelInterface(Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040934

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040931

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040933

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemGradientColorWheel;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initOpacitySeekBar()V
    .locals 4

    const/16 v1, 0x8

    const v0, 0x1020470

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemOpacitySeekBar;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBar:Lcom/samsung/android/widget/SemOpacitySeekBar;

    const v0, 0x1020471

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mIsOpacityBarEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBar:Lcom/samsung/android/widget/SemOpacitySeekBar;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBar:Lcom/samsung/android/widget/SemOpacitySeekBar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemOpacitySeekBar;->init(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBar:Lcom/samsung/android/widget/SemOpacitySeekBar;

    new-instance v1, Lcom/samsung/android/widget/SemColorPicker$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemColorPicker$5;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBar:Lcom/samsung/android/widget/SemOpacitySeekBar;

    new-instance v1, Lcom/samsung/android/widget/SemColorPicker$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemColorPicker$6;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040936

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040939

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040933

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initRecentColorLayout()V
    .locals 14

    const/4 v13, 0x6

    const/4 v12, 0x0

    const v7, 0x1020476

    invoke-virtual {p0, v7}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    const v7, 0x1020475

    invoke-virtual {p0, v7}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v3, 0x3f99999a    # 1.2f

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v0, v7, Landroid/content/res/Configuration;->fontScale:F

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v8, 0x10501f5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    const v7, 0x3f99999a    # 1.2f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_0

    int-to-float v7, v6

    div-float/2addr v7, v0

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    const-wide v10, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v7, v8

    invoke-virtual {v5, v12, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    new-array v7, v13, [Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v9, 0x104092d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v9, 0x1040930

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v9, 0x104092f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v9, 0x104092c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v9, 0x104092b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v9, 0x104092e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    iput-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mColorDescription:[Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mContext:Landroid/content/Context;

    sget-boolean v7, Lcom/samsung/android/widget/SemColorPicker;->sIsDeviceDefaultDark:Z

    if-eqz v7, :cond_1

    const v7, 0x1060159

    :goto_0
    invoke-virtual {v8, v7}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v13, :cond_2

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lcom/samsung/android/widget/SemColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const v7, 0x1060158

    goto :goto_0

    :cond_2
    return-void
.end method

.method private mapColorOnColorWheel(I)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v2, p1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    invoke-virtual {v2, p1}, Lcom/samsung/android/widget/SemGradientColorWheel;->setColor(I)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    invoke-virtual {v2, p1}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->restoreColor(I)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBar:Lcom/samsung/android/widget/SemOpacitySeekBar;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBar:Lcom/samsung/android/widget/SemOpacitySeekBar;

    invoke-virtual {v2, p1}, Lcom/samsung/android/widget/SemOpacitySeekBar;->restoreColor(I)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getV()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getAlpha()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setV(F)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setAlpha(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemGradientColorWheel;->updateCursorColor(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setV(F)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setAlpha(I)V

    :cond_4
    return-void
.end method

.method private setImageColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mContext:Landroid/content/Context;

    const v4, 0x108082f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    const/16 v3, 0x3d

    invoke-static {v3, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v3, v6, [[I

    new-array v4, v5, [I

    aput-object v4, v3, v5

    new-array v4, v6, [I

    aput v2, v4, v5

    invoke-direct {v1, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v3, v1, v0, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setInitialColors()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemColorPicker;->mapColorOnColorWheel(I)V

    return-void
.end method

.method private updateCurrentColor()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->changeColorBase(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBar:Lcom/samsung/android/widget/SemOpacitySeekBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBar:Lcom/samsung/android/widget/SemOpacitySeekBar;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->changeColorBase(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemGradientColorWheel;->updateCursorColor(I)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    return-object v0
.end method

.method public isUserInputValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mIsInputFromUser:Z

    return v0
.end method

.method public saveSelectedColor()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->saveSelectedColor(I)V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    return-void
.end method

.method public setOpacityBarEnabled(Z)V
    .locals 5

    const/4 v3, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemColorPicker;->mIsOpacityBarEnabled:Z

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mIsOpacityBarEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBar:Lcom/samsung/android/widget/SemOpacitySeekBar;

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const v2, 0x102046f

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    return-void
.end method

.method public updateRecentColorLayout()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v6

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v9, 0x1040937

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    const/4 v7, 0x6

    if-ge v3, v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ge v3, v6, :cond_0

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-direct {p0, v5, v7}, Lcom/samsung/android/widget/SemColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mColorDescription:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemColorPicker;->mapColorOnColorWheel(I)V

    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemColorPicker;->mapColorOnColorWheel(I)V

    :cond_4
    return-void

    :cond_5
    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v7, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemColorPicker;->mapColorOnColorWheel(I)V

    goto :goto_2
.end method
