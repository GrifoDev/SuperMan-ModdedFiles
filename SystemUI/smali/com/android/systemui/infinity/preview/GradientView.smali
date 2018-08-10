.class public Lcom/android/systemui/infinity/preview/GradientView;
.super Landroid/view/View;
.source "GradientView.java"


# static fields
.field private static final COLOR_LIST:[Ljava/lang/String;

.field private static final GRADIENT_COLOR:[[[I

.field private static final GRADIENT_POSITION:[[I


# instance fields
.field private mGradient:Landroid/graphics/LinearGradient;

.field private mHeight:I

.field private mHomeBGColor:[[I

.field private mHomeBGPosition:[I

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x6

    const/4 v5, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "black"

    aput-object v1, v0, v5

    const-string/jumbo v1, "orchid"

    aput-object v1, v0, v7

    const-string/jumbo v1, "silver"

    aput-object v1, v0, v8

    const-string/jumbo v1, "blue"

    aput-object v1, v0, v9

    const-string/jumbo v1, "gold"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "pink"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/preview/GradientView;->COLOR_LIST:[Ljava/lang/String;

    new-array v0, v6, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v8

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v9

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/preview/GradientView;->GRADIENT_POSITION:[[I

    new-array v0, v6, [[[I

    new-array v1, v6, [[I

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0xd

    const/16 v3, 0x37

    filled-new-array {v5, v2, v3}, [I

    move-result-object v2

    aput-object v2, v1, v8

    const/16 v2, 0xd

    const/16 v3, 0x37

    filled-new-array {v5, v2, v3}, [I

    move-result-object v2

    aput-object v2, v1, v9

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v6, [[I

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x24

    const/16 v3, 0x10

    const/16 v4, 0x31

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v8

    const/16 v2, 0x24

    const/16 v3, 0x10

    const/16 v4, 0x31

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v9

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    aput-object v1, v0, v7

    new-array v1, v6, [[I

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x2b

    const/16 v3, 0x2a

    const/16 v4, 0x39

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v8

    const/16 v2, 0x2b

    const/16 v3, 0x2a

    const/16 v4, 0x39

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v9

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    aput-object v1, v0, v8

    new-array v1, v6, [[I

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x10

    const/16 v3, 0x23

    const/16 v4, 0x43

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v8

    const/16 v2, 0x10

    const/16 v3, 0x23

    const/16 v4, 0x43

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v9

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    aput-object v1, v0, v9

    new-array v1, v6, [[I

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x2b

    const/16 v3, 0x20

    const/16 v4, 0xf

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v8

    const/16 v2, 0x2b

    const/16 v3, 0x20

    const/16 v4, 0xf

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v9

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v6, [[I

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x3f

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v8

    const/16 v2, 0x3f

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v9

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/preview/GradientView;->GRADIENT_COLOR:[[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1bc
        0x40c
        0x534
        0x794
        0xb90
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1bc
        0x40c
        0x534
        0x794
        0xb90
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1bc
        0x40c
        0x534
        0x794
        0xb90
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1bc
        0x40c
        0x534
        0x794
        0xb90
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1bc
        0x40c
        0x534
        0x794
        0xb90
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1bc
        0x40c
        0x534
        0x794
        0xb90
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private makeGradient()V
    .locals 9

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHeight:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGColor:[[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGPosition:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGColor:[[I

    array-length v0, v0

    new-array v5, v0, [I

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGColor:[[I

    array-length v0, v0

    new-array v6, v0, [F

    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGColor:[[I

    array-length v0, v0

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGColor:[[I

    aget-object v0, v0, v8

    aget v0, v0, v7

    iget-object v2, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGColor:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGColor:[[I

    aget-object v3, v3, v8

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    aput v0, v5, v8

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGPosition:[I

    aget v0, v0, v8

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGPosition:[I

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGPosition:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    aput v0, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHeight:I

    int-to-float v4, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mGradient:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GradientView;->mGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GradientView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mGradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/android/systemui/infinity/preview/GradientView;->mWidth:I

    iput p2, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHeight:I

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/GradientView;->makeGradient()V

    return-void
.end method

.method public setGradientColor(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/systemui/infinity/preview/GradientView;->COLOR_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/android/systemui/infinity/preview/GradientView;->COLOR_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    :cond_0
    sget-object v2, Lcom/android/systemui/infinity/preview/GradientView;->GRADIENT_COLOR:[[[I

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGColor:[[I

    sget-object v2, Lcom/android/systemui/infinity/preview/GradientView;->GRADIENT_POSITION:[[I

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGPosition:[I

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/GradientView;->makeGradient()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
