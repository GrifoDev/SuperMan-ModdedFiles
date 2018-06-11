.class public Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;
.super Landroid/widget/ImageView;
.source "BlurImageView.java"


# static fields
.field static ALPHA:I

.field static COLOR:I

.field private static final DEBUG:Z

.field static DIVIDE:F

.field static HIGH:I

.field static RADIUS:I

.field private static final TAG:Ljava/lang/String;

.field static WIDHT:I

.field static wallpaperManager:Landroid/app/WallpaperManager;


# instance fields
.field private mBitmapIn:Landroid/graphics/Bitmap;

.field private mBitmapOut:Landroid/graphics/Bitmap;

.field public mSr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->RADIUS:I

    const/16 v0, 0x500

    sput v0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->HIGH:I

    const/16 v0, 0x2d0

    sput v0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->WIDHT:I

    const/high16 v0, 0x40f00000    # 7.5f

    sput v0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->DIVIDE:F

    const/16 v0, 0x80

    sput v0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->ALPHA:I

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->COLOR:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->wallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->wallpaperManager:Landroid/app/WallpaperManager;

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->mBitmapIn:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->mBitmapOut:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->mSr:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public actualiza_valores()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    const-string/jumbo v1, "blur_degree_effect"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->RADIUS:I

    const/16 v2, 0x80

    const-string/jumbo v1, "blur_background_effect"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->ALPHA:I

    const-string v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v1, "blur_background_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->COLOR:I

    return-void
.end method

.method public jFastblur(Landroid/content/Context;Landroid/graphics/Bitmap;IFI)Landroid/graphics/Bitmap;
    .locals 49

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    const/16 v42, 0x0

    const/16 v24, 0x0

    const/16 v4, 0x60

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x60

    div-int/2addr v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    move/from16 v0, p3

    if-ge v0, v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v4, v5, v9

    new-array v3, v4, [I

    const-string/jumbo v4, "pix"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v43, v5, -0x1

    add-int/lit8 v25, v9, -0x1

    mul-int v41, v5, v9

    add-int v4, p3, p3

    add-int/lit8 v15, v4, 0x1

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v28, v0

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move/from16 v0, v41

    new-array v10, v0, [I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v40, v0

    add-int/lit8 v4, v15, 0x1

    shr-int/lit8 v16, v4, 0x1

    mul-int v16, v16, v16

    move/from16 v0, v16

    mul-int/lit16 v4, v0, 0x100

    new-array v0, v4, [I

    move-object/from16 v17, v0

    const/16 v26, 0x0

    :goto_1
    move/from16 v0, v16

    mul-int/lit16 v4, v0, 0x100

    move/from16 v0, v26

    if-ge v0, v4, :cond_1

    div-int v4, v26, v16

    aput v4, v17, v26

    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    :cond_1
    const/16 v46, 0x0

    move/from16 v48, v46

    const/4 v4, 0x3

    filled-new-array {v15, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [[I

    add-int/lit8 v29, p3, 0x1

    const/16 v45, 0x0

    :goto_2
    move/from16 v0, v45

    if-ge v0, v9, :cond_6

    const/4 v13, 0x0

    move/from16 v23, v13

    move/from16 v33, v13

    move v12, v13

    move/from16 v22, v13

    move/from16 v32, v13

    move v11, v13

    move/from16 v21, v13

    move/from16 v31, v13

    move/from16 v0, p3

    neg-int v0, v0

    move/from16 v26, v0

    :goto_3
    move/from16 v0, v26

    move/from16 v1, p3

    if-gt v0, v1, :cond_3

    const/4 v4, 0x0

    move/from16 v0, v26

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v43

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v46

    aget v27, v3, v4

    add-int v4, v26, p3

    aget-object v34, v35, v4

    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v27

    shr-int/lit8 v6, v6, 0x10

    aput v6, v34, v4

    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v27

    shr-int/lit8 v6, v6, 0x8

    aput v6, v34, v4

    const/4 v4, 0x2

    move/from16 v0, v27

    and-int/lit16 v6, v0, 0xff

    aput v6, v34, v4

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v30, v29, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    mul-int v4, v4, v30

    add-int v33, v33, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    mul-int v4, v4, v30

    add-int v23, v23, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    mul-int v4, v4, v30

    add-int/2addr v13, v4

    if-lez v26, :cond_2

    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v31, v31, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v21, v21, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    :goto_4
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v32, v32, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v22, v22, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    goto :goto_4

    :cond_3
    move/from16 v36, p3

    const/16 v44, 0x0

    :goto_5
    move/from16 v0, v44

    if-ge v0, v5, :cond_5

    aget v4, v17, v33

    aput v4, v28, v46

    aget v4, v17, v23

    aput v4, v20, v46

    aget v4, v17, v13

    aput v4, v10, v46

    sub-int v33, v33, v32

    sub-int v23, v23, v22

    sub-int/2addr v13, v12

    sub-int v4, v36, p3

    add-int v37, v4, v15

    rem-int v4, v37, v15

    aget-object v34, v35, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v32, v32, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v22, v22, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v12, v4

    if-nez v45, :cond_4

    add-int v4, v44, p3

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v43

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v40, v44

    :cond_4
    aget v4, v40, v44

    add-int v4, v4, v48

    aget v27, v3, v4

    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v27

    shr-int/lit8 v6, v6, 0x10

    aput v6, v34, v4

    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v27

    shr-int/lit8 v6, v6, 0x8

    aput v6, v34, v4

    const/4 v4, 0x2

    move/from16 v0, v27

    and-int/lit16 v6, v0, 0xff

    aput v6, v34, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v31, v31, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v21, v21, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    add-int v33, v33, v31

    add-int v23, v23, v21

    add-int/2addr v13, v11

    add-int/lit8 v4, v36, 0x1

    rem-int v36, v4, v15

    rem-int v4, v36, v15

    aget-object v34, v35, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v32, v32, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v22, v22, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v31, v31, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v21, v21, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v11, v4

    add-int/lit8 v46, v46, 0x1

    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_5

    :cond_5
    add-int v48, v48, v5

    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_2

    :cond_6
    const/16 v44, 0x0

    :goto_6
    move/from16 v0, v44

    if-ge v0, v5, :cond_c

    const/4 v13, 0x0

    move/from16 v23, v13

    move/from16 v33, v13

    move v12, v13

    move/from16 v22, v13

    move/from16 v32, v13

    move v11, v13

    move/from16 v21, v13

    move/from16 v31, v13

    move/from16 v0, p3

    neg-int v4, v0

    mul-int v47, v4, v5

    move/from16 v0, p3

    neg-int v0, v0

    move/from16 v26, v0

    :goto_7
    move/from16 v0, v26

    move/from16 v1, p3

    if-gt v0, v1, :cond_9

    const/4 v4, 0x0

    move/from16 v0, v47

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v46, v4, v44

    add-int v4, v26, p3

    aget-object v34, v35, v4

    const/4 v4, 0x0

    aget v6, v28, v46

    aput v6, v34, v4

    const/4 v4, 0x1

    aget v6, v20, v46

    aput v6, v34, v4

    const/4 v4, 0x2

    aget v6, v10, v46

    aput v6, v34, v4

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v30, v29, v4

    aget v4, v28, v46

    mul-int v4, v4, v30

    add-int v33, v33, v4

    aget v4, v20, v46

    mul-int v4, v4, v30

    add-int v23, v23, v4

    aget v4, v10, v46

    mul-int v4, v4, v30

    add-int/2addr v13, v4

    if-lez v26, :cond_8

    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v31, v31, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v21, v21, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    :goto_8
    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    add-int v47, v47, v5

    :cond_7
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v32, v32, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v22, v22, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    goto :goto_8

    :cond_9
    move/from16 v46, v44

    move/from16 v36, p3

    const/16 v45, 0x0

    :goto_9
    move/from16 v0, v45

    if-ge v0, v9, :cond_b

    const/high16 v4, -0x1000000

    aget v6, v3, v46

    and-int/2addr v4, v6

    aget v6, v17, v33

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v17, v23

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v17, v13

    or-int/2addr v4, v6

    aput v4, v3, v46

    sub-int v33, v33, v32

    sub-int v23, v23, v22

    sub-int/2addr v13, v12

    sub-int v4, v36, p3

    add-int v37, v4, v15

    rem-int v4, v37, v15

    aget-object v34, v35, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v32, v32, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v22, v22, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v12, v4

    if-nez v44, :cond_a

    add-int v4, v45, v29

    move/from16 v0, v25

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v40, v45

    :cond_a
    aget v4, v40, v45

    add-int v27, v44, v4

    const/4 v4, 0x0

    aget v6, v28, v27

    aput v6, v34, v4

    const/4 v4, 0x1

    aget v6, v20, v27

    aput v6, v34, v4

    const/4 v4, 0x2

    aget v6, v10, v27

    aput v6, v34, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v31, v31, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v21, v21, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    add-int v33, v33, v31

    add-int v23, v23, v21

    add-int/2addr v13, v11

    add-int/lit8 v4, v36, 0x1

    rem-int v36, v4, v15

    aget-object v34, v35, v36

    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v32, v32, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v22, v22, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v31, v31, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v21, v21, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v11, v4

    add-int v46, v46, v5

    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_9

    :cond_b
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_6

    :cond_c
    const-string/jumbo v4, "pix"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p5

    invoke-virtual {v14, v0, v4, v6, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    sget v7, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->COLOR:I

    invoke-virtual {v14, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-string v4, "BlurImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jFastblur take "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v18, v38

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " millis sec."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object/from16 v2, p2

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->actualiza_valores()V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->mSr:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->HIGH:I

    sget v1, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->WIDHT:I

    invoke-static {v1, v0}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, p0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->RADIUS:I

    sget v4, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->DIVIDE:F

    sget v5, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->ALPHA:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->jFastblur(Landroid/content/Context;Landroid/graphics/Bitmap;IFI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->mBitmapOut:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->mSr:Z

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->mSr:Z

    :cond_0
    return-void
.end method

.method public renderScriptBlur(Landroid/graphics/Bitmap;IFI)Landroid/graphics/Bitmap;
    .locals 23

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    const/16 v19, 0x60

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x60

    div-int v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v9, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    mul-int/lit8 v20, p2, 0x2

    add-int v19, v19, v20

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    mul-int/lit8 v21, p2, 0x2

    add-int v20, v20, v21

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v15, Landroid/graphics/Rect;->top:I

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v15, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p2

    iput v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v0, p2

    iput v0, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    iput v0, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    sget-object v19, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    const/16 v22, 0xff

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    sget v21, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->COLOR:I

    move/from16 v2, v21

    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v4, v14, v15, v5, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v12

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v10

    invoke-static {v12}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v13

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v13, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v13, v10}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12}, Landroid/renderscript/RenderScript;->destroy()V

    invoke-virtual {v4, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5, v15, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    sget v21, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->COLOR:I

    move/from16 v2, v21

    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v19, "BlurImageView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "setBlurImageBitmap take "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v6, v16

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " millis sec."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v14
.end method

.method public setBlurImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->actualiza_valores()V

    sget v0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->RADIUS:I

    sget v1, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->DIVIDE:F

    sget v2, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->ALPHA:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->setBlurImageBitmap(Landroid/graphics/Bitmap;IFI)V

    return-void
.end method

.method public setBlurImageBitmap(Landroid/graphics/Bitmap;IFI)V
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->jFastblur(Landroid/content/Context;Landroid/graphics/Bitmap;IFI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-void
.end method

.method public setBlurImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->actualiza_valores()V

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->RADIUS:I

    sget v2, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->DIVIDE:F

    sget v3, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->ALPHA:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->setBlurImageBitmap(Landroid/graphics/Bitmap;IFI)V

    return-void
.end method

.method public setBlurImageDrawable(Landroid/graphics/drawable/Drawable;IFI)V
    .locals 2

    const-string v0, "BlurImageView"

    const-string/jumbo v1, "setBlurImageDrawable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->setBlurImageBitmap(Landroid/graphics/Bitmap;IFI)V

    return-void
.end method

.method public setWallpaperAsImage()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->actualiza_valores()V

    const-string v0, "BlurImageView"

    const-string/jumbo v1, "setWallpaperAsImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->RADIUS:I

    sget v2, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->DIVIDE:F

    sget v3, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->ALPHA:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarBlurImageView;->setBlurImageDrawable(Landroid/graphics/drawable/Drawable;IFI)V

    return-void
.end method
