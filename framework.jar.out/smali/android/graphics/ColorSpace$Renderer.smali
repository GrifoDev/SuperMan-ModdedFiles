.class public Landroid/graphics/ColorSpace$Renderer;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Renderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Renderer$Point;
    }
.end annotation


# static fields
.field private static final CHROMATICITY_RESOLUTION:I = 0x20

.field private static final NATIVE_SIZE:I = 0x5a0

.field private static final ONE_THIRD:D = 0.3333333333333333

.field private static final SPECTRUM_LOCUS_X:[F

.field private static final SPECTRUM_LOCUS_Y:[F

.field private static final UCS_SCALE:F = 1.5f


# instance fields
.field private mClip:Z

.field private final mColorSpaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/ColorSpace;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/ColorSpace$Renderer$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mShowWhitePoint:Z

.field private mSize:I

.field private mUcs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x5f

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_Y:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e33cf70
        0x3e30ef13
        0x3e2ee7c5
        0x3e2e2ac3
        0x3e2430f5
        0x3e167c28
        0x3e0e7d13
        0x3e08bda9
        0x3e01ba80
        0x3ded3847    # 0.11583f
        0x3de07e5a
        0x3dcb0d0f
        0x3dbb00bd    # 0.09131f
        0x3da0029f    # 0.07813f
        0x3d8cbb80
        0x3d5ff2e5
        0x3d26f71a
        0x3ce14163    # 0.027497f
        0x3c8548aa    # 0.01627f
        0x3c05d745    # 0.008169f
        0x3b9fc6da    # 0.004876f
        0x3b8283d3    # 0.003983f
        0x3b7ce747    # 0.003859f
        0x3b983d79    # 0.004646f
        0x3c02e01a    # 0.007988f
        0x3c633eff    # 0.01387f
        0x3cb6390d    # 0.022244f
        0x3cdf6ba0    # 0.027273f
        0x3d066e44    # 0.03282f
        0x3d1f223a    # 0.038851f
        0x3d39a8ce    # 0.045327f
        0x3d55b574    # 0.052175f
        0x3d72fcad
        0x3d88a0d3
        0x3d982a13    # 0.074299f
        0x3db830e4
        0x3de9ca19
        0x3e0e0610
        0x3e1e6d59
        0x3e457e67    # 0.192865f
        0x3e6b1e19    # 0.229607f
        0x3e8811b2    # 0.26576f
        0x3e9a69be
        0x3eacb89d
        0x3ebf04bc
        0x3ed1435b
        0x3ee3599b
        0x3ef51f60
        0x3f03310a
        0x3f0b75da
        0x3f133bda
        0x3f1a5892
        0x3f208440
        0x3f25f16b
        0x3f2a6e54
        0x3f2e187a
        0x3f31054b
        0x3f3359cd
        0x3f353900    # 0.707901f
        0x3f36c9b0
        0x3f381180
        0x3f391794
        0x3f3c1398
        0x3f379a9e
        0x3f3321a3
        0x3f2ea897
        0x3f2a2f9d
        0x3f25b6a2
        0x3f213da7
        0x3f1cc4ac
        0x3f184bb2
        0x3f13d2a6
        0x3f0f59ab
        0x3f0ae0b1
        0x3f0667b6    # 0.52502f
        0x3f01eebb
        0x3efaeb5f
        0x3ef1f96a
        0x3ee90774
        0x3ee0157f
        0x3ed72389
        0x3ece3172
        0x3ec53f7d    # 0.38525f
        0x3ebc4d87
        0x3eb35b92
        0x3eaa699c
        0x3ea177a7    # 0.315366f
        0x3e988590
        0x3e8f939a
        0x3e86a1a5    # 0.262952f
        0x3e7b5f5f    # 0.245481f
        0x3e697b74    # 0.22801f
        0x3e579746    # 0.210538f
        0x3e45b35b    # 0.193067f
        0x3e33cf70
    .end array-data

    :array_1
    .array-data 4
        0x3bad81ae    # 0.005295f
        0x3b9d4952    # 0.0048f
        0x3bb34e77    # 0.005472f
        0x3bc3d252    # 0.005976f
        0x3c6d80a1    # 0.014496f
        0x3cda426c    # 0.026643f
        0x3d103969    # 0.035211f
        0x3d2eea64
        0x3d5ae4f3    # 0.053441f
        0x3d96bc1f    # 0.073601f
        0x3db1e6cd
        0x3de573a8
        0x3e07ec35
        0x3e2e8e1d
        0x3e4d9770    # 0.200773f
        0x3e82209b
        0x3ea2543f
        0x3ec6a78b
        0x3eed12ec
        0x3f09db66
        0x3f16527a
        0x3f1c4b6f
        0x3f27a754
        0x3f2d0c5f
        0x3f3724ea
        0x3f40101f
        0x3f47993d
        0x3f4aca8a    # 0.792153f
        0x3f4d8f82
        0x3f4fe319
        0x3f51c62a    # 0.81943f
        0x3f53404f    # 0.8252f
        0x3f54577e
        0x3f551202
        0x3f557614
        0x3f555433
        0x3f5383e0
        0x3f509678
        0x3f4e4e6a
        0x3f481a15
        0x3f411ce3
        0x3f396e7a
        0x3f313c47
        0x3f28ab82
        0x3f1fdd44    # 0.62447f
        0x3f16f1bb
        0x3f0e030c
        0x3f052d45
        0x3ef92514
        0x3ee8ae32
        0x3ed9378f
        0x3ecb0425
        0x3ebeb9a1
        0x3eb3ec68
        0x3eab05b8
        0x3ea3b83d
        0x3e9de13b
        0x3e994014
        0x3e9586cb
        0x3e926762
        0x3e8fd8cf
        0x3e8dce3a
        0x3e87d8cf
        0x3e83afb8    # 0.2572f
        0x3e7f0d41
        0x3e76bb13
        0x3e6e68e4    # 0.232822f
        0x3e6616b5
        0x3e5dc487    # 0.21657f
        0x3e557258    # 0.208444f
        0x3e4d2029
        0x3e44cdfb
        0x3e3c7bcc
        0x3e34299e    # 0.17594f
        0x3e2bd76f
        0x3e238540
        0x3e1b3312
        0x3e12e0e3    # 0.143436f
        0x3e0a8ef7
        0x3e023cc9
        0x3df3d534
        0x3de330d7
        0x3dd28c7a    # 0.102807f
        0x3dc1e81d
        0x3db143bf
        0x3da09f62
        0x3d8ffb05    # 0.070303f
        0x3d7ead4f
        0x3d5d6495    # 0.054051f
        0x3d3c1bda
        0x3d1ad320    # 0.037799f
        0x3cf314cb    # 0.029673f
        0x3cb08356    # 0.021547f
        0x3c5be3c1    # 0.013421f
        0x3bad81ae    # 0.005295f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/ColorSpace$Renderer;->mShowWhitePoint:Z

    iput-boolean v2, p0, Landroid/graphics/ColorSpace$Renderer;->mClip:Z

    iput-boolean v2, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/ColorSpace$Renderer;->mPoints:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ColorSpace$Renderer;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ColorSpace$Renderer;-><init>()V

    return-void
.end method

.method private static computeChromaticityMesh([F[I)V
    .locals 44

    sget-object v38, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static/range {v38 .. v38}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v9

    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v7, v0, [F

    const/16 v35, 0x0

    const/4 v8, 0x0

    const/16 v37, 0x0

    :goto_0
    sget-object v38, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1

    sget-object v38, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    rem-int v38, v37, v38

    add-int/lit8 v16, v38, 0x1

    sget-object v38, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_Y:[F

    aget v38, v38, v37

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double v38, v38, v40

    sget-object v40, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    aget v40, v40, v37

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double v40, v40, v42

    invoke-static/range {v38 .. v41}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v4, v0

    sget-object v38, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_Y:[F

    aget v38, v38, v16

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double v38, v38, v40

    sget-object v40, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    aget v40, v40, v16

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double v40, v40, v42

    invoke-static/range {v38 .. v41}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v5, v0

    sget-object v38, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    aget v38, v38, v37

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Landroid/graphics/ColorSpace$Renderer;->sqr(D)D

    move-result-wide v38

    sget-object v40, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_Y:[F

    aget v40, v40, v37

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Landroid/graphics/ColorSpace$Renderer;->sqr(D)D

    move-result-wide v40

    add-double v38, v38, v40

    const-wide/high16 v40, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v38 .. v41}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v17, v0

    sget-object v38, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    aget v38, v38, v16

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Landroid/graphics/ColorSpace$Renderer;->sqr(D)D

    move-result-wide v38

    sget-object v40, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_Y:[F

    aget v40, v40, v16

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Landroid/graphics/ColorSpace$Renderer;->sqr(D)D

    move-result-wide v40

    add-double v38, v38, v40

    const-wide/high16 v40, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v38 .. v41}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v18, v0

    const/4 v6, 0x1

    move/from16 v36, v35

    :goto_1
    const/16 v38, 0x20

    move/from16 v0, v38

    if-gt v6, v0, :cond_0

    int-to-float v0, v6

    move/from16 v38, v0

    const/high16 v39, 0x42000000    # 32.0f

    div-float v14, v38, v39

    add-int/lit8 v38, v6, -0x1

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x42000000    # 32.0f

    div-float v15, v38, v39

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v38, v0

    float-to-double v0, v4

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v10, v38, v40

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v38, v0

    float-to-double v0, v4

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v20, v38, v40

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v38, v0

    float-to-double v0, v5

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v12, v38, v40

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v38, v0

    float-to-double v0, v5

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v22, v38, v40

    float-to-double v0, v14

    move-wide/from16 v38, v0

    mul-double v38, v38, v10

    const-wide v40, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v19, v0

    float-to-double v0, v14

    move-wide/from16 v38, v0

    mul-double v38, v38, v20

    const-wide v40, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v24, v0

    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v19

    sub-float v25, v38, v24

    float-to-double v0, v15

    move-wide/from16 v38, v0

    mul-double v38, v38, v10

    const-wide v40, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v26, v0

    float-to-double v0, v15

    move-wide/from16 v38, v0

    mul-double v38, v38, v20

    const-wide v40, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v27, v0

    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v26

    sub-float v28, v38, v27

    float-to-double v0, v15

    move-wide/from16 v38, v0

    mul-double v38, v38, v12

    const-wide v40, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v29, v0

    float-to-double v0, v15

    move-wide/from16 v38, v0

    mul-double v38, v38, v22

    const-wide v40, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v30, v0

    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v29

    sub-float v31, v38, v30

    float-to-double v0, v14

    move-wide/from16 v38, v0

    mul-double v38, v38, v12

    const-wide v40, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v32, v0

    float-to-double v0, v14

    move-wide/from16 v38, v0

    mul-double v38, v38, v22

    const-wide v40, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v33, v0

    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v32

    sub-float v34, v38, v33

    move/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v7, v0, v1, v2, v9}, Landroid/graphics/ColorSpace$Renderer;->computeColor([FFFFLandroid/graphics/ColorSpace;)I

    move-result v38

    aput v38, p1, v8

    add-int/lit8 v38, v8, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v7, v0, v1, v2, v9}, Landroid/graphics/ColorSpace$Renderer;->computeColor([FFFFLandroid/graphics/ColorSpace;)I

    move-result v39

    aput v39, p1, v38

    add-int/lit8 v38, v8, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v7, v0, v1, v2, v9}, Landroid/graphics/ColorSpace$Renderer;->computeColor([FFFFLandroid/graphics/ColorSpace;)I

    move-result v39

    aput v39, p1, v38

    add-int/lit8 v38, v8, 0x3

    aget v39, p1, v8

    aput v39, p1, v38

    add-int/lit8 v38, v8, 0x4

    add-int/lit8 v39, v8, 0x2

    aget v39, p1, v39

    aput v39, p1, v38

    add-int/lit8 v38, v8, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v7, v0, v1, v2, v9}, Landroid/graphics/ColorSpace$Renderer;->computeColor([FFFFLandroid/graphics/ColorSpace;)I

    move-result v39

    aput v39, p1, v38

    add-int/lit8 v8, v8, 0x6

    add-int/lit8 v35, v36, 0x1

    aput v19, p0, v36

    add-int/lit8 v36, v35, 0x1

    aput v24, p0, v35

    add-int/lit8 v35, v36, 0x1

    aput v26, p0, v36

    add-int/lit8 v36, v35, 0x1

    aput v27, p0, v35

    add-int/lit8 v35, v36, 0x1

    aput v29, p0, v36

    add-int/lit8 v36, v35, 0x1

    aput v30, p0, v35

    add-int/lit8 v35, v36, 0x1

    aput v19, p0, v36

    add-int/lit8 v36, v35, 0x1

    aput v24, p0, v35

    add-int/lit8 v35, v36, 0x1

    aput v29, p0, v36

    add-int/lit8 v36, v35, 0x1

    aput v30, p0, v35

    add-int/lit8 v35, v36, 0x1

    aput v32, p0, v36

    add-int/lit8 v36, v35, 0x1

    aput v33, p0, v35

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v37, v37, 0x1

    move/from16 v35, v36

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private static computeColor([FFFFLandroid/graphics/ColorSpace;)I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    aput p1, p0, v0

    aput p2, p0, v3

    aput p3, p0, v4

    invoke-virtual {p4, p0}, Landroid/graphics/ColorSpace;->fromXyz([F)[F

    aget v0, p0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    aget v1, p0, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget v1, p0, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private drawBox(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;)V
    .locals 19

    const/16 v14, 0xa

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v3, :cond_0

    const/4 v14, 0x7

    const/high16 v15, 0x3fc00000    # 1.5f

    :cond_0
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v3, -0x3f3f40

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v13, 0x1

    :goto_0
    add-int/lit8 v3, v14, -0x1

    if-ge v13, v3, :cond_1

    int-to-float v3, v13

    const/high16 v4, 0x41200000    # 10.0f

    div-float v17, v3, v4

    move/from16 v0, p2

    int-to-float v3, v0

    mul-float v3, v3, v17

    mul-float v18, v3, v15

    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    mul-float v4, v4, v17

    mul-float/2addr v4, v15

    sub-float v5, v3, v4

    move/from16 v0, p2

    int-to-float v3, v0

    const v4, 0x3f666666    # 0.9f

    mul-float v6, v4, v3

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move v7, v5

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p3

    int-to-float v3, v0

    const v4, 0x3dcccccd    # 0.1f

    mul-float v10, v4, v3

    move-object/from16 v6, p1

    move/from16 v7, v18

    move/from16 v9, v18

    move-object/from16 v11, p4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x40800000    # 4.0f

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v3, -0x1000000

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v13, 0x1

    :goto_1
    add-int/lit8 v3, v14, -0x1

    if-ge v13, v3, :cond_2

    int-to-float v3, v13

    const/high16 v4, 0x41200000    # 10.0f

    div-float v17, v3, v4

    move/from16 v0, p2

    int-to-float v3, v0

    mul-float v3, v3, v17

    mul-float v18, v3, v15

    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    mul-float v4, v4, v17

    mul-float/2addr v4, v15

    sub-float v5, v3, v4

    move/from16 v0, p2

    int-to-float v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v6, v3, v4

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move v7, v5

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v4, v6

    sub-float v10, v3, v4

    move-object/from16 v6, p1

    move/from16 v7, v18

    move/from16 v9, v18

    move-object/from16 v11, p4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x42100000    # 36.0f

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string/jumbo v3, "sans-serif-light"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    const/4 v13, 0x1

    :goto_2
    add-int/lit8 v3, v14, -0x1

    if-ge v13, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4, v3, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v3, v13

    const/high16 v4, 0x41200000    # 10.0f

    div-float v17, v3, v4

    move/from16 v0, p2

    int-to-float v3, v0

    mul-float v3, v3, v17

    mul-float v18, v3, v15

    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    mul-float v4, v4, v17

    mul-float/2addr v4, v15

    sub-float v5, v3, v4

    move/from16 v0, p2

    int-to-float v3, v0

    const v4, -0x42b33333    # -0.05f

    mul-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v3, v4

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, v18, v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int v4, v4, p3

    add-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p3

    int-to-float v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v0, p2

    int-to-float v3, v0

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    move/from16 v0, p3

    int-to-float v4, v0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v0, p2

    int-to-float v3, v0

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    move/from16 v0, p3

    int-to-float v4, v0

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v0, p3

    int-to-float v3, v0

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawGamuts(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;[F[F)V
    .locals 11

    iget-boolean v7, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v7, :cond_2

    const/high16 v7, 0x3fc00000    # 1.5f

    :goto_0
    const/high16 v8, 0x40800000    # 4.0f

    div-float v5, v8, v7

    iget-object v7, p0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/ColorSpace;

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v7

    sget-object v8, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v7, v8, :cond_0

    move-object v6, v2

    check-cast v6, Landroid/graphics/ColorSpace$Rgb;

    iget-boolean v7, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    move-object/from16 v0, p6

    invoke-static {v6, v0, v7}, Landroid/graphics/ColorSpace$Renderer;->getPrimaries(Landroid/graphics/ColorSpace$Rgb;[FZ)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    int-to-float v7, p2

    const/4 v8, 0x0

    aget v8, p6, v8

    mul-float/2addr v7, v8

    int-to-float v8, p3

    int-to-float v9, p3

    const/4 v10, 0x1

    aget v10, p6, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, p2

    const/4 v8, 0x2

    aget v8, p6, v8

    mul-float/2addr v7, v8

    int-to-float v8, p3

    int-to-float v9, p3

    const/4 v10, 0x3

    aget v10, p6, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v7, p2

    const/4 v8, 0x4

    aget v8, p6, v8

    mul-float/2addr v7, v8

    int-to-float v8, p3

    int-to-float v9, p3

    const/4 v10, 0x5

    aget v10, p6, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v7, p0, Landroid/graphics/ColorSpace$Renderer;->mShowWhitePoint:Z

    if-eqz v7, :cond_0

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Landroid/graphics/ColorSpace$Rgb;->getWhitePoint([F)[F

    iget-boolean v7, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v7, :cond_1

    invoke-static/range {p7 .. p7}, Landroid/graphics/ColorSpace;->-wrap11([F)V

    :cond_1
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v7, p2

    const/4 v8, 0x0

    aget v8, p7, v8

    mul-float/2addr v7, v8

    int-to-float v8, p3

    int-to-float v9, p3

    const/4 v10, 0x1

    aget v10, p7, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {p1, v7, v8, v5, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private drawLocus(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;[F)V
    .locals 32

    sget-object v3, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x20

    mul-int/lit8 v30, v3, 0x6

    mul-int/lit8 v3, v30, 0x2

    new-array v6, v3, [F

    array-length v3, v6

    new-array v0, v3, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Landroid/graphics/ColorSpace$Renderer;->computeChromaticityMesh([F[I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v3, :cond_0

    invoke-static {v6}, Landroid/graphics/ColorSpace;->-wrap11([F)V

    :cond_0
    const/16 v25, 0x0

    :goto_0
    array-length v3, v6

    move/from16 v0, v25

    if-ge v0, v3, :cond_1

    aget v3, v6, v25

    move/from16 v0, p2

    int-to-float v4, v0

    mul-float/2addr v3, v4

    aput v3, v6, v25

    add-int/lit8 v3, v25, 0x1

    move/from16 v0, p3

    int-to-float v4, v0

    add-int/lit8 v5, v25, 0x1

    aget v5, v6, v5

    move/from16 v0, p3

    int-to-float v7, v0

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    aput v4, v6, v3

    add-int/lit8 v25, v25, 0x2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/graphics/ColorSpace$Renderer;->mClip:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/util/Pair;

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/graphics/ColorSpace;

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v3

    sget-object v4, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v3, v4, :cond_2

    move-object/from16 v29, v24

    check-cast v29, Landroid/graphics/ColorSpace$Rgb;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    move-object/from16 v0, v29

    move-object/from16 v1, p6

    invoke-static {v0, v1, v3}, Landroid/graphics/ColorSpace$Renderer;->getPrimaries(Landroid/graphics/ColorSpace$Rgb;[FZ)V

    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    move/from16 v0, p2

    int-to-float v3, v0

    const/4 v4, 0x0

    aget v4, p6, v4

    mul-float/2addr v3, v4

    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    const/4 v7, 0x1

    aget v7, p6, v7

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v0, p2

    int-to-float v3, v0

    const/4 v4, 0x2

    aget v4, p6, v4

    mul-float/2addr v3, v4

    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    const/4 v7, 0x3

    aget v7, p6, v7

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v0, p2

    int-to-float v3, v0

    const/4 v4, 0x4

    aget v4, p6, v4

    mul-float/2addr v3, v4

    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    const/4 v7, 0x5

    aget v7, p6, v7

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, v18

    array-length v3, v0

    new-array v10, v3, [I

    const v3, -0x939394

    invoke-static {v10, v3}, Ljava/util/Arrays;->fill([II)V

    sget-object v4, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    array-length v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v3, p1

    move-object/from16 v15, p4

    invoke-virtual/range {v3 .. v15}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    sget-object v12, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    array-length v13, v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v11, p1

    move-object v14, v6

    move-object/from16 v23, p4

    invoke-virtual/range {v11 .. v23}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    const/16 v26, 0x174

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->reset()V

    aget v3, v6, v26

    const/16 v4, 0x175

    aget v4, v6, v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v31, 0x2

    :goto_2
    sget-object v3, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    array-length v3, v3

    move/from16 v0, v31

    if-ge v0, v3, :cond_5

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x180

    move/from16 v26, v0

    aget v3, v6, v26

    add-int/lit8 v4, v26, 0x1

    aget v4, v6, v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v31, v31, 0x1

    goto :goto_2

    :cond_4
    sget-object v12, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    array-length v13, v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v11, p1

    move-object v14, v6

    move-object/from16 v23, p4

    invoke-virtual/range {v11 .. v23}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v3, :cond_6

    const/high16 v3, 0x3fc00000    # 1.5f

    :goto_3
    const/high16 v4, 0x40800000    # 4.0f

    div-float v3, v4, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, -0x1000000

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3
.end method

.method private drawPoints(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 10

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v6, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v6, :cond_1

    const/high16 v6, 0x3fc00000    # 1.5f

    :goto_0
    const/high16 v7, 0x40800000    # 4.0f

    div-float v2, v7, v6

    const/4 v6, 0x3

    new-array v4, v6, [F

    const/4 v6, 0x2

    new-array v5, v6, [F

    iget-object v6, p0, Landroid/graphics/ColorSpace$Renderer;->mPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$Renderer$Point;

    iget-object v6, v0, Landroid/graphics/ColorSpace$Renderer$Point;->mRgb:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    const/4 v7, 0x0

    aput v6, v4, v7

    iget-object v6, v0, Landroid/graphics/ColorSpace$Renderer$Point;->mRgb:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x1

    aput v6, v4, v7

    iget-object v6, v0, Landroid/graphics/ColorSpace$Renderer$Point;->mRgb:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    const/4 v7, 0x2

    aput v6, v4, v7

    iget-object v6, v0, Landroid/graphics/ColorSpace$Renderer$Point;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v6, v4}, Landroid/graphics/ColorSpace;->toXyz([F)[F

    iget v6, v0, Landroid/graphics/ColorSpace$Renderer$Point;->mColor:I

    invoke-virtual {p4, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    add-float/2addr v6, v7

    const/4 v7, 0x2

    aget v7, v4, v7

    add-float v3, v6, v7

    const/4 v6, 0x0

    aget v6, v4, v6

    div-float/2addr v6, v3

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x1

    aget v6, v4, v6

    div-float/2addr v6, v3

    const/4 v7, 0x1

    aput v6, v5, v7

    iget-boolean v6, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v6, :cond_0

    invoke-static {v5}, Landroid/graphics/ColorSpace;->-wrap11([F)V

    :cond_0
    int-to-float v6, p2

    const/4 v7, 0x0

    aget v7, v5, v7

    mul-float/2addr v6, v7

    int-to-float v7, p3

    int-to-float v8, p3

    const/4 v9, 0x1

    aget v9, v5, v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {p1, v6, v7, v2, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getPrimaries(Landroid/graphics/ColorSpace$Rgb;[FZ)V
    .locals 2

    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const v0, 0x3fb47ae1    # 1.41f

    const/4 v1, 0x0

    aput v0, p1, v1

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x1

    aput v0, p1, v1

    const v0, 0x3e8a3d71    # 0.27f

    const/4 v1, 0x2

    aput v0, p1, v1

    const v0, 0x3f9eb852    # 1.24f

    const/4 v1, 0x3

    aput v0, p1, v1

    const v0, -0x41947ae1    # -0.23f

    const/4 v1, 0x4

    aput v0, p1, v1

    const v0, -0x40ee147b    # -0.57f

    const/4 v1, 0x5

    aput v0, p1, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/graphics/ColorSpace;->-wrap11([F)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Landroid/graphics/ColorSpace$Rgb;->getPrimaries([F)[F

    goto :goto_0
.end method

.method private setTransform(Landroid/graphics/Canvas;II[F)V
    .locals 13

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget-object v10, p0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/ColorSpace;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v10

    sget-object v11, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v10, v11, :cond_0

    move-object v6, v1

    check-cast v6, Landroid/graphics/ColorSpace$Rgb;

    iget-boolean v10, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    move-object/from16 v0, p4

    invoke-static {v6, v0, v10}, Landroid/graphics/ColorSpace$Renderer;->getPrimaries(Landroid/graphics/ColorSpace$Rgb;[FZ)V

    iget v10, v5, Landroid/graphics/RectF;->left:F

    const/4 v11, 0x4

    aget v11, p4, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v5, Landroid/graphics/RectF;->left:F

    iget v10, v5, Landroid/graphics/RectF;->top:F

    const/4 v11, 0x5

    aget v11, p4, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v5, Landroid/graphics/RectF;->top:F

    iget v10, v5, Landroid/graphics/RectF;->right:F

    const/4 v11, 0x0

    aget v11, p4, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v5, Landroid/graphics/RectF;->right:F

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v11, 0x3

    aget v11, p4, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v5, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_1
    iget-boolean v10, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v10, :cond_2

    const v4, 0x3f19999a    # 0.6f

    :goto_1
    iget v10, v5, Landroid/graphics/RectF;->left:F

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v5, Landroid/graphics/RectF;->left:F

    iget v10, v5, Landroid/graphics/RectF;->top:F

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v5, Landroid/graphics/RectF;->top:F

    iget v10, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v5, Landroid/graphics/RectF;->right:F

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float v8, v4, v10

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float v9, v4, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v10, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    int-to-float v10, v10

    const/high16 v11, 0x44b40000    # 1440.0f

    div-float/2addr v10, v11

    iget v11, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    int-to-float v11, v11

    const/high16 v12, 0x44b40000    # 1440.0f

    div-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v10, v4

    int-to-float v11, p2

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v11

    sub-float/2addr v11, v4

    move/from16 v0, p3

    int-to-float v12, v0

    mul-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v10, p2

    const v11, 0x3d4ccccd    # 0.05f

    mul-float/2addr v10, v11

    move/from16 v0, p3

    int-to-float v11, v0

    const v12, -0x42b33333    # -0.05f

    mul-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_2
    const v4, 0x3f666666    # 0.9f

    goto :goto_1
.end method

.method private setUcsTransform(Landroid/graphics/Canvas;I)V
    .locals 3

    const/high16 v2, 0x3fc00000    # 1.5f

    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v0, :cond_0

    int-to-float v0, p2

    int-to-float v1, p2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    return-void
.end method

.method private static sqr(D)D
    .locals 2

    mul-double v0, p0, p0

    return-wide v0
.end method


# virtual methods
.method public add(Landroid/graphics/ColorSpace;FFFI)Landroid/graphics/ColorSpace$Renderer;
    .locals 4

    iget-object v0, p0, Landroid/graphics/ColorSpace$Renderer;->mPoints:Ljava/util/List;

    new-instance v1, Landroid/graphics/ColorSpace$Renderer$Point;

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    const/4 v3, 0x2

    aput p4, v2, v3

    invoke-direct {v1, p1, v2, p5}, Landroid/graphics/ColorSpace$Renderer$Point;-><init>(Landroid/graphics/ColorSpace;[FI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Landroid/graphics/ColorSpace;I)Landroid/graphics/ColorSpace$Renderer;
    .locals 3

    iget-object v0, p0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clip(Z)Landroid/graphics/ColorSpace$Renderer;
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Renderer;->mClip:Z

    return-object p0
.end method

.method public render()Landroid/graphics/Bitmap;
    .locals 11

    new-instance v4, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iget v0, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    iget v9, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x6

    new-array v6, v0, [F

    const/4 v0, 0x2

    new-array v7, v0, [F

    const/16 v2, 0x5a0

    const/16 v3, 0x5a0

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    invoke-direct {p0, v1, v2, v3, v6}, Landroid/graphics/ColorSpace$Renderer;->setTransform(Landroid/graphics/Canvas;II[F)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Renderer;->drawBox(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;)V

    invoke-direct {p0, v1, v3}, Landroid/graphics/ColorSpace$Renderer;->setUcsTransform(Landroid/graphics/Canvas;I)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/graphics/ColorSpace$Renderer;->drawLocus(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;[F)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/ColorSpace$Renderer;->drawGamuts(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;[F[F)V

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Renderer;->drawPoints(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    return-object v8
.end method

.method public showWhitePoint(Z)Landroid/graphics/ColorSpace$Renderer;
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Renderer;->mShowWhitePoint:Z

    return-object p0
.end method

.method public size(I)Landroid/graphics/ColorSpace$Renderer;
    .locals 1

    const/16 v0, 0x80

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    return-object p0
.end method

.method public uniformChromaticityScale(Z)Landroid/graphics/ColorSpace$Renderer;
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    return-object p0
.end method
