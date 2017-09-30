.class public Lcom/samsung/android/widget/SemColorPicker;
.super Landroid/widget/LinearLayout;
.source "SemColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemColorPicker$1;,
        Lcom/samsung/android/widget/SemColorPicker$PickedColor;
    }
.end annotation


# static fields
.field static final RECENT_COLOR_SIZE:I = 0x6

.field private static final RIPPLE_EFFECT_OPACITY:I = 0x3d

.field private static final TAG:Ljava/lang/String; = "SemColorPicker"


# instance fields
.field private lastPickedColor:I

.field private mContext:Landroid/content/Context;

.field private mCurrentColorView:Landroid/widget/ImageView;

.field private mCurrentOrientation:I

.field private mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

.field private mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

.field mImageButtonClickListener:Landroid/view/View$OnClickListener;

.field private mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

.field private mPickedColorView:Landroid/widget/ImageView;

.field private mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

.field private mRecentColorLayout:Landroid/view/ViewGroup;

.field private mRecentColorListLayout:Landroid/widget/LinearLayout;

.field private mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

.field private recentColorItemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private recentColorValues:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemGradientColorSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemColorPicker;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemColorPicker;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemColorPicker;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemColorPicker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemColorPicker;->MapColorOnColorWheel(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemColorPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->updateCurrentColor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemColorPicker;->lastPickedColor:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentOrientation:I

    new-instance v0, Lcom/samsung/android/widget/SemColorPicker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemColorPicker$1;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900fb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v0, Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/widget/SemRecentColorInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemRecentColorInfo;->getRecentColorInfo()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->init()V

    return-void
.end method

.method private MapColorOnColorWheel(I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemGradientColorWheel;->setColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->restoreColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getV()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setV(F)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemGradientColorWheel;->updateCursorColor(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setV(F)V

    :cond_3
    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-direct {v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initCurrentColorView()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initGradientColorSeekBar()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initGradientColorWheel()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initRecentColorLayout()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->updateCurrentColor()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->setInitialColors()V

    return-void
.end method

.method private initCurrentColorView()V
    .locals 2

    const v0, 0x102048d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    const v0, 0x102048f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/samsung/android/widget/SemColorPicker;->lastPickedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private initGradientColorSeekBar()V
    .locals 2

    const v0, 0x1020494

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemGradientColorSeekBar;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->init(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    new-instance v1, Lcom/samsung/android/widget/SemColorPicker$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemColorPicker$3;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    new-instance v1, Lcom/samsung/android/widget/SemColorPicker$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemColorPicker$4;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initGradientColorWheel()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentOrientation:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105033f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    const v1, 0x1020493

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemGradientColorWheel;

    iput-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemGradientColorWheel;->init(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemGradientColorWheel;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    new-instance v2, Lcom/samsung/android/widget/SemColorPicker$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemColorPicker$2;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemGradientColorWheel;->setOnColorWheelInterface(Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105035f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private initRecentColorLayout()V
    .locals 2

    const v0, 0x1020496

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorLayout:Landroid/view/ViewGroup;

    const v1, 0x1020498

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method private setImageColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v4, 0x1060194

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050353

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v6, 0x3d

    invoke-static {v6, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v6, v9, [[I

    new-array v7, v8, [I

    aput-object v7, v6, v8

    new-array v7, v9, [I

    aput v3, v7, v8

    invoke-direct {v1, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v0, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/samsung/android/widget/SemColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setInitialColors()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemColorPicker;->MapColorOnColorWheel(I)V

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
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemGradientColorWheel;->updateCursorColor(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    return-object v0
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

.method public updateRecentColorLayout()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorItemViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/widget/SemColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104041b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104041c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorItemViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060195

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/widget/SemColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemColorPicker;->MapColorOnColorWheel(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemColorPicker;->MapColorOnColorWheel(I)V

    goto :goto_2
.end method
