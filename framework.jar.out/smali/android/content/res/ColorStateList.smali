.class public Landroid/content/res/ColorStateList;
.super Landroid/content/res/ComplexColor;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ColorStateList$1;,
        Landroid/content/res/ColorStateList$ColorStateListFactory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_COLOR:I = -0x10000

.field private static final EMPTY:[[I

.field private static final TAG:Ljava/lang/String; = "ColorStateList"

.field private static final sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mChangingConfigurations:I

.field private mColors:[I

.field private mDefaultColor:I

.field private mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

.field private mIsOpaque:Z

.field private mStateSpecs:[[I

.field private mThemeAttrs:[[I


# direct methods
.method static synthetic -get0(Landroid/content/res/ColorStateList;)I
    .locals 1

    iget v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iget-object v0, p1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iget v0, p1, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iget-boolean v0, p1, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    iput-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    iget-object v0, p1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    iget-object v0, p1, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    :cond_0
    return-void
.end method

.method public constructor <init>([[I[I)V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    return-void
.end method

.method private applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v8, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-nez v8, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x0

    iget-object v7, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    array-length v0, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_4

    aget-object v8, v7, v6

    if-eqz v8, :cond_2

    aget-object v8, v7, v6

    sget-object v9, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    invoke-virtual {p1, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    aget-object v8, v7, v6

    aget v8, v8, v11

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v8, v8, v6

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v4, v8, v9

    :goto_1
    aget-object v8, v7, v6

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v8

    aput-object v8, v7, v6

    aget-object v8, v7, v6

    if-eqz v8, :cond_1

    const/4 v5, 0x1

    :cond_1
    iget-object v8, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v8, v8, v6

    invoke-virtual {v1, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v8, 0x1

    invoke-virtual {v1, v8, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iget-object v8, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-direct {p0, v3, v2}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    move-result v9

    aput v9, v8, v6

    iget v8, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    iput-object v10, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    :cond_5
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_1
    if-eq v1, v3, :cond_2

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "selector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": invalid color state list tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0}, Landroid/content/res/ColorStateList;-><init>()V

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v26

    add-int/lit8 v15, v26, 0x1

    const/4 v8, 0x0

    const/high16 v11, -0x10000

    const/4 v13, 0x0

    const-class v26, [I

    const/16 v27, 0x14

    invoke-static/range {v26 .. v27}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[I

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [[I

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v10, v0, [I

    const/16 v18, 0x0

    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-ge v12, v15, :cond_1

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    :cond_1
    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    if-gt v12, v15, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "item"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    if-nez v26, :cond_0

    sget-object v26, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v23

    const/16 v26, 0x0

    const v27, -0xff01

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    const/16 v26, 0x1

    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v26

    or-int v8, v8, v26

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v16, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/4 v14, 0x0

    move/from16 v17, v16

    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_3

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    add-int/lit8 v16, v17, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v26

    if-eqz v26, :cond_2

    :goto_2
    aput v20, v21, v17

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v17, v16

    goto :goto_1

    :sswitch_0
    move/from16 v16, v17

    goto :goto_3

    :cond_2
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    goto :goto_2

    :cond_3
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v21

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    move-result v9

    if-eqz v18, :cond_4

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_5

    :cond_4
    move v11, v9

    :cond_5
    if-eqz v23, :cond_6

    const/4 v13, 0x1

    :cond_6
    move/from16 v0, v18

    invoke-static {v10, v0, v9}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v10

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [[I

    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[I

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iput v8, v0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    move-object/from16 v0, p0

    iput v11, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    if-eqz v13, :cond_8

    move/from16 v0, v18

    new-array v0, v0, [[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move-object/from16 v2, v26

    move/from16 v3, v28

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mColors:[I

    move/from16 v0, v18

    new-array v0, v0, [[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mColors:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v18

    invoke-static {v10, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    move-object/from16 v2, v26

    move/from16 v3, v28

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct/range {p0 .. p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    return-void

    :cond_8
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x10101a5 -> :sswitch_0
        0x101031f -> :sswitch_0
    .end sparse-switch
.end method

.method private modulateColorAlpha(IF)I
    .locals 5

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    const v2, 0xffffff

    and-int/2addr v2, p1

    shl-int/lit8 v3, v0, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method private onColorsChanged()V
    .locals 8

    const/4 v6, 0x0

    const/high16 v2, -0x10000

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v0, v5

    if-lez v0, :cond_1

    aget v2, v1, v6

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-lez v3, :cond_0

    aget-object v6, v5, v3

    array-length v6, v6

    if-nez v6, :cond_2

    aget v2, v1, v3

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    aget v6, v1, v3

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_3

    const/4 v4, 0x0

    :cond_1
    iput v2, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput-boolean v4, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return-void

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static valueOf(I)Landroid/content/res/ColorStateList;
    .locals 9

    sget-object v6, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v6

    :try_start_0
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_1

    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v6

    return-object v1

    :cond_0
    :try_start_1
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_3

    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v5, Landroid/content/res/ColorStateList;->EMPTY:[[I

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput p0, v7, v8

    invoke-direct {v2, v5, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v2

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorForState([II)I
    .locals 4

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v3, v0

    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public getColors()[I
    .locals 1

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    return-object v0
.end method

.method public getConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/ColorStateList$ColorStateListFactory;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;-><init>(Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    :cond_0
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    return-object v0
.end method

.method public getDefaultColor()I
    .locals 1

    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method public getStates()[[I
    .locals 1

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    return-object v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 2

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    const v1, 0x101009c

    invoke-static {v0, v1}, Landroid/util/StateSet;->containsAttribute([[II)Z

    move-result v0

    return v0
.end method

.method public hasState(I)Z
    .locals 8

    iget-object v4, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v5, v4, v1

    array-length v2, v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget v6, v5, v3

    if-eq v6, p1, :cond_0

    aget v6, v5, v3

    not-int v7, p1

    if-ne v6, v7, :cond_1

    :cond_0
    const/4 v6, 0x1

    return v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    return v6
.end method

.method public isOpaque()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return v0
.end method

.method public isStateful()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v2, v2

    if-lt v2, v0, :cond_0

    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    array-length v2, v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList;-><init>(Landroid/content/res/ColorStateList;)V

    invoke-direct {v0, p1}, Landroid/content/res/ColorStateList;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method public bridge synthetic obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ColorStateList{mThemeAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mChangingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mStateSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDefaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAlpha(I)Landroid/content/res/ColorStateList;
    .locals 5

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v3, v3

    new-array v0, v3, [I

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v1

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v3, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ColorStateList"

    const-string/jumbo v3, "Wrote partially-resolved ColorStateList to parcel!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
