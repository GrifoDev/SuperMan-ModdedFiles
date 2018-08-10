.class public Lcom/android/systemui/infinity/preview/ThemeFactory;
.super Ljava/lang/Object;
.source "ThemeFactory.java"


# static fields
.field public static final THEME_NAME_BLACK:Ljava/lang/String; = "black"

.field public static final THEME_NAME_BLUE:Ljava/lang/String; = "blue"

.field public static final THEME_NAME_GOLD:Ljava/lang/String; = "gold"

.field public static final THEME_NAME_ORCHID:Ljava/lang/String; = "orchid"

.field public static final THEME_TYPE_BLACK:I = 0x0

.field public static final THEME_TYPE_BLUE:I = 0x1

.field public static final THEME_TYPE_GOLD:I = 0x2

.field public static final THEME_TYPE_ORCHID:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x3

    if-nez p0, :cond_0

    new-array v1, v8, [I

    const/16 v5, 0x33

    const/16 v6, 0x46

    const/16 v7, 0x4f

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v1, v9

    const/high16 v5, -0x1000000

    aput v5, v1, v11

    const/high16 v5, -0x1000000

    aput v5, v1, v12

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    const/16 v5, 0xb

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    const/16 v5, 0xb

    new-array v3, v5, [I

    const/16 v5, 0xb

    const/16 v6, 0xb

    const/16 v7, 0xf

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v9

    const/16 v5, 0xd

    const/16 v6, 0x11

    const/16 v7, 0x1f

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v11

    const/16 v5, 0x22

    const/16 v6, 0x28

    const/16 v7, 0x35

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v12

    const/16 v5, 0x41

    const/16 v6, 0x49

    const/16 v7, 0x59

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v8

    const/16 v5, 0x71

    const/16 v6, 0x70

    const/16 v7, 0x7d

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x4

    aput v5, v3, v6

    const/16 v5, 0x93

    const/16 v6, 0x8c

    const/16 v7, 0x95

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x5

    aput v5, v3, v6

    const/16 v5, 0xa3

    const/16 v6, 0x96

    const/16 v7, 0xa1

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x6

    aput v5, v3, v6

    const/16 v5, 0xa1

    const/16 v6, 0x91

    const/16 v7, 0xa2

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x7

    aput v5, v3, v6

    const/16 v5, 0x7e

    const/16 v6, 0x7f

    const/16 v7, 0x9a

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/16 v6, 0x8

    aput v5, v3, v6

    const/16 v5, 0x65

    const/16 v6, 0x6d

    const/16 v7, 0x85

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/16 v6, 0x9

    aput v5, v3, v6

    const/16 v5, 0x49

    const/16 v6, 0x55

    const/16 v7, 0x6b

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/16 v6, 0xa

    aput v5, v3, v6

    new-instance v0, Lcom/android/systemui/infinity/preview/ThemeModel;

    invoke-direct {v0}, Lcom/android/systemui/infinity/preview/ThemeModel;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->aodColor:[I

    iput-object v2, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->aodPosition:[F

    iput-object v3, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->homeColor:[I

    iput-object v4, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->homePosition:[F

    iput v10, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->x0:F

    iput v10, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->y0:F

    iput v10, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->x1:F

    const/high16 v5, 0x45390000    # 2960.0f

    iput v5, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->y1:F

    return-object v0

    :cond_0
    if-ne p0, v11, :cond_1

    new-array v1, v8, [I

    const/16 v5, 0x41

    invoke-static {v9, v9, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v1, v9

    const/high16 v5, -0x1000000

    aput v5, v1, v11

    const/high16 v5, -0x1000000

    aput v5, v1, v12

    new-array v2, v8, [F

    fill-array-data v2, :array_2

    const/16 v5, 0xa

    new-array v3, v5, [I

    const/16 v5, 0xa

    invoke-static {v9, v8, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v9

    const/16 v5, 0xa

    const/16 v6, 0x27

    invoke-static {v11, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v11

    const/4 v5, 0x7

    const/16 v6, 0x2c

    const/16 v7, 0x5e

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v12

    const/16 v5, 0x29

    const/16 v6, 0x62

    const/16 v7, 0x93

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v8

    const/16 v5, 0x54

    const/16 v6, 0x83

    const/16 v7, 0xa2

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x4

    aput v5, v3, v6

    const/16 v5, 0x79

    const/16 v6, 0x98

    const/16 v7, 0xa7

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x5

    aput v5, v3, v6

    const/16 v5, 0x83

    const/16 v6, 0x9b

    const/16 v7, 0xa6

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x6

    aput v5, v3, v6

    const/16 v5, 0x7c

    const/16 v6, 0x94

    const/16 v7, 0xa3

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x7

    aput v5, v3, v6

    const/16 v5, 0x54

    const/16 v6, 0x78

    const/16 v7, 0x94

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/16 v6, 0x8

    aput v5, v3, v6

    const/16 v5, 0x26

    const/16 v6, 0x44

    const/16 v7, 0x66

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/16 v6, 0x9

    aput v5, v3, v6

    const/16 v5, 0xa

    new-array v4, v5, [F

    fill-array-data v4, :array_3

    new-instance v0, Lcom/android/systemui/infinity/preview/ThemeModel;

    invoke-direct {v0}, Lcom/android/systemui/infinity/preview/ThemeModel;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->aodColor:[I

    iput-object v2, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->aodPosition:[F

    iput-object v3, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->homeColor:[I

    iput-object v4, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->homePosition:[F

    iput v10, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->x0:F

    iput v10, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->y0:F

    iput v10, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->x1:F

    const/high16 v5, 0x45390000    # 2960.0f

    iput v5, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->y1:F

    return-object v0

    :cond_1
    if-ne p0, v12, :cond_2

    new-array v1, v8, [I

    const/16 v5, 0x3f

    const/16 v6, 0x2e

    const/16 v7, 0x18

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v1, v9

    const/high16 v5, -0x1000000

    aput v5, v1, v11

    const/high16 v5, -0x1000000

    aput v5, v1, v12

    new-array v2, v8, [F

    fill-array-data v2, :array_4

    const/16 v5, 0x9

    new-array v4, v5, [F

    fill-array-data v4, :array_5

    const/16 v5, 0x9

    new-array v3, v5, [I

    const/16 v5, 0x70

    const/16 v6, 0x43

    const/16 v7, 0x28

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v9

    const/16 v5, 0x94

    const/16 v6, 0x63

    const/16 v7, 0x2a

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v11

    const/16 v5, 0xb5

    const/16 v6, 0x99

    const/16 v7, 0x62

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v12

    const/16 v5, 0x9f

    const/16 v6, 0x88

    const/16 v7, 0x76

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v8

    const/16 v5, 0x6c

    const/16 v6, 0x64

    const/16 v7, 0x6a

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x4

    aput v5, v3, v6

    const/16 v5, 0x30

    const/16 v6, 0x38

    const/16 v7, 0x50

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x5

    aput v5, v3, v6

    const/16 v5, 0xf

    const/16 v6, 0x1e

    const/16 v7, 0x40

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x6

    aput v5, v3, v6

    const/16 v5, 0xa

    const/16 v6, 0x14

    const/16 v7, 0x30

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x7

    aput v5, v3, v6

    const/4 v5, 0x6

    const/16 v6, 0x1a

    invoke-static {v12, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/16 v6, 0x8

    aput v5, v3, v6

    new-instance v0, Lcom/android/systemui/infinity/preview/ThemeModel;

    invoke-direct {v0}, Lcom/android/systemui/infinity/preview/ThemeModel;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->aodColor:[I

    iput-object v2, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->aodPosition:[F

    iput-object v3, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->homeColor:[I

    iput-object v4, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->homePosition:[F

    iput v10, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->x0:F

    iput v10, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->y0:F

    iput v10, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->x1:F

    const/high16 v5, 0x45390000    # 2960.0f

    iput v5, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->y1:F

    return-object v0

    :cond_2
    if-ne p0, v8, :cond_3

    new-array v1, v8, [I

    const/16 v5, 0x2e

    const/16 v6, 0x40

    invoke-static {v5, v9, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v1, v9

    const/high16 v5, -0x1000000

    aput v5, v1, v11

    const/high16 v5, -0x1000000

    aput v5, v1, v12

    new-array v2, v8, [F

    fill-array-data v2, :array_6

    const/16 v5, 0xa

    new-array v4, v5, [F

    fill-array-data v4, :array_7

    const/16 v5, 0xa

    new-array v3, v5, [I

    const/16 v5, 0x58

    const/16 v6, 0x41

    const/16 v7, 0x67

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v9

    const/16 v5, 0x7f

    const/16 v6, 0x5e

    const/16 v7, 0x80

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v11

    const/16 v5, 0xb1

    const/16 v6, 0x7c

    const/16 v7, 0x8e

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v12

    const/16 v5, 0xca

    const/16 v6, 0x91

    const/16 v7, 0xa3

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v8

    const/16 v5, 0xc9

    const/16 v6, 0x9a

    const/16 v7, 0xb3

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x4

    aput v5, v3, v6

    const/16 v5, 0xb9

    const/16 v6, 0x90

    const/16 v7, 0xb8

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x5

    aput v5, v3, v6

    const/16 v5, 0x9c

    const/16 v6, 0x7a

    const/16 v7, 0xb0

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x6

    aput v5, v3, v6

    const/16 v5, 0x62

    const/16 v6, 0x4d

    const/16 v7, 0x89

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x7

    aput v5, v3, v6

    const/16 v5, 0x34

    const/16 v6, 0x29

    const/16 v7, 0x59

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/16 v6, 0x8

    aput v5, v3, v6

    const/16 v5, 0xa

    const/4 v6, 0x7

    const/16 v7, 0x1d

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/16 v6, 0x9

    aput v5, v3, v6

    new-instance v0, Lcom/android/systemui/infinity/preview/ThemeModel;

    invoke-direct {v0}, Lcom/android/systemui/infinity/preview/ThemeModel;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->aodColor:[I

    iput-object v2, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->aodPosition:[F

    iput-object v3, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->homeColor:[I

    iput-object v4, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->homePosition:[F

    iput v10, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->x0:F

    iput v10, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->y0:F

    iput v10, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->x1:F

    const/high16 v5, 0x45390000    # 2960.0f

    iput v5, v0, Lcom/android/systemui/infinity/preview/ThemeModel;->y1:F

    return-object v0

    :cond_3
    const/4 v5, 0x0

    return-object v5

    :array_0
    .array-data 4
        0x0
        0x3ebd6388    # 0.3699f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3df5c28f    # 0.12f
        0x3e75c28f    # 0.24f
        0x3ebd70a4    # 0.37f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3f2b851f    # 0.67f
        0x3f428f5c    # 0.76f
        0x3f5eb852    # 0.87f
        0x3f6e147b    # 0.93f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3ebd6388    # 0.3699f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3df5c28f    # 0.12f
        0x3e800000    # 0.25f
        0x3ec28f5c    # 0.38f
        0x3f000000    # 0.5f
        0x3f2147ae    # 0.63f
        0x3f333333    # 0.7f
        0x3f428f5c    # 0.76f
        0x3f6147ae    # 0.88f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3ebd6388    # 0.3699f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3db7e910    # 0.0898f
        0x3e572474    # 0.2101f
        0x3eadfa44    # 0.3398f
        0x3eeb5dcc    # 0.4597f
        0x3f16fd22    # 0.5898f
        0x3f3ae148    # 0.73f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3ebd6388    # 0.3699f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3df58e22    # 0.1199f
        0x3e79096c    # 0.2432f
        0x3eadfa44    # 0.3398f
        0x3ed6fd22    # 0.4199f
        0x3f000000    # 0.5f
        0x3f16fd22    # 0.5898f
        0x3f3ae148    # 0.73f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getThemeModel(Ljava/lang/String;)Lcom/android/systemui/infinity/preview/ThemeModel;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "blue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, "gold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object v0

    return-object v0

    :cond_3
    const-string/jumbo v0, "orchid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {v1}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object v0

    return-object v0
.end method
