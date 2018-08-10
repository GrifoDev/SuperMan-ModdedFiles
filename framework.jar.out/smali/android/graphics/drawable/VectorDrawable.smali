.class public Landroid/graphics/drawable/VectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VClipPath;,
        Landroid/graphics/drawable/VectorDrawable$VFullPath;,
        Landroid/graphics/drawable/VectorDrawable$VGroup;,
        Landroid/graphics/drawable/VectorDrawable$VObject;,
        Landroid/graphics/drawable/VectorDrawable$VPath;,
        Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final SHAPE_CLIP_PATH:Ljava/lang/String; = "clip-path"

.field private static final SHAPE_GROUP:Ljava/lang/String; = "group"

.field private static final SHAPE_PATH:Ljava/lang/String; = "path"

.field private static final SHAPE_VECTOR:Ljava/lang/String; = "vector"


# instance fields
.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDpiScaledDirty:Z

.field private mDpiScaledHeight:I

.field private mDpiScaledInsets:Landroid/graphics/Insets;

.field private mDpiScaledWidth:I

.field private mMutated:Z

.field private mTargetDensity:I

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;


# direct methods
.method static synthetic -wrap0(J[BI)Z
    .locals 2

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nGetFullPathProperties(J[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(J[FI)Z
    .locals 2

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nGetGroupProperties(J[FI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeAlpha(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeWidth(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTranslateX(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTranslateY(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathEnd(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathOffset(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathStart(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap17(J)I
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetFillColor(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap18(J)I
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeColor(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap19()J
    .locals 2

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->nCreateClipPath()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(JF)Z
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetRootAlpha(JF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(J)J
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateClipPath(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap21()J
    .locals 2

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->nCreateFullPath()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap22(J)J
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateFullPath(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap23()J
    .locals 2

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->nCreateGroup()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap24(J)J
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateGroup(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap25(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nCreateTreeFromCopy(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap26(J)J
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateTree(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap27(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nAddChild(JJ)V

    return-void
.end method

.method static synthetic -wrap28(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetFillAlpha(JF)V

    return-void
.end method

.method static synthetic -wrap29(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetFillColor(JI)V

    return-void
.end method

.method static synthetic -wrap3(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetFillAlpha(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetName(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap31(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetPathData(JJ)V

    return-void
.end method

.method static synthetic -wrap32(JLjava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetPathString(JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap33(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetPivotX(JF)V

    return-void
.end method

.method static synthetic -wrap34(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetPivotY(JF)V

    return-void
.end method

.method static synthetic -wrap35(JFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetRendererViewportSize(JFF)V

    return-void
.end method

.method static synthetic -wrap36(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetRotation(JF)V

    return-void
.end method

.method static synthetic -wrap37(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetScaleX(JF)V

    return-void
.end method

.method static synthetic -wrap38(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetScaleY(JF)V

    return-void
.end method

.method static synthetic -wrap39(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeAlpha(JF)V

    return-void
.end method

.method static synthetic -wrap4(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetPivotX(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeColor(JI)V

    return-void
.end method

.method static synthetic -wrap41(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeWidth(JF)V

    return-void
.end method

.method static synthetic -wrap42(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTranslateX(JF)V

    return-void
.end method

.method static synthetic -wrap43(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTranslateY(JF)V

    return-void
.end method

.method static synthetic -wrap44(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathEnd(JF)V

    return-void
.end method

.method static synthetic -wrap45(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathOffset(JF)V

    return-void
.end method

.method static synthetic -wrap46(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathStart(JF)V

    return-void
.end method

.method static synthetic -wrap47(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathFillGradient(JJ)V

    return-void
.end method

.method static synthetic -wrap48(JFIFIFFFFFIII)V
    .locals 0

    invoke-static/range {p0 .. p13}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathProperties(JFIFIFFFFFIII)V

    return-void
.end method

.method static synthetic -wrap49(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathStrokeGradient(JJ)V

    return-void
.end method

.method static synthetic -wrap5(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetPivotY(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap50(JFFFFFFF)V
    .locals 0

    invoke-static/range {p0 .. p8}, Landroid/graphics/drawable/VectorDrawable;->nUpdateGroupProperties(JFFFFFFF)V

    return-void
.end method

.method static synthetic -wrap6(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetRootAlpha(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetRotation(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetScaleX(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(J)F
    .locals 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetScaleY(J)F

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public static create(Landroid/content/res/Resources;I)Landroid/graphics/drawable/VectorDrawable;
    .locals 8

    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v7, :cond_1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    :cond_1
    if-eq v5, v7, :cond_2

    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v7, "No start tag found"

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v3

    sget-object v6, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v7, "parser error"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v6, 0x0

    return-object v6

    :cond_2
    :try_start_1
    new-instance v1, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    invoke-virtual {v1, p0, v4, v0}, Landroid/graphics/drawable/VectorDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v2

    sget-object v6, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v7, "parser error"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    const/4 v8, 0x1

    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iget-object v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v5, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    add-int/lit8 v6, v14, 0x1

    :goto_0
    const/4 v14, 0x1

    if-eq v4, v14, :cond_8

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ge v14, v6, :cond_0

    const/4 v14, 0x3

    if-eq v4, v14, :cond_8

    :cond_0
    const/4 v14, 0x2

    if-ne v4, v14, :cond_7

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    const-string/jumbo v14, "path"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    new-instance v10, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {v10}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v10, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    invoke-virtual {v10}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    iget-object v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v8, 0x0

    iget v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget v15, v10, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    or-int/2addr v14, v15

    iput v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    :cond_2
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    :cond_3
    const-string/jumbo v14, "clip-path"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    new-instance v9, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    invoke-direct {v9}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    iget-object v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget v15, v9, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    or-int/2addr v14, v15

    iput v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    goto :goto_1

    :cond_5
    const-string/jumbo v14, "group"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    new-instance v7, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v7}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    invoke-virtual {v5, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    iget-object v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    invoke-static {v7}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get7(Landroid/graphics/drawable/VectorDrawable$VGroup;)I

    move-result v15

    or-int/2addr v14, v15

    iput v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    goto :goto_1

    :cond_7
    const/4 v14, 0x3

    if-ne v4, v14, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "group"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_8
    if-eqz v8, :cond_a

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-lez v14, :cond_9

    const-string/jumbo v14, " or "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    const-string/jumbo v14, "path"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "no "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " defined"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_a
    return-void
.end method

.method private static native nAddChild(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreateClipPath()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreateClipPath(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreateFullPath()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreateFullPath(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreateGroup()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreateGroup(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreateTree(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreateTreeFromCopy(JJ)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDraw(JJJLandroid/graphics/Rect;ZZ)I
.end method

.method private static native nGetFillAlpha(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetFillColor(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetFullPathProperties(J[BI)Z
.end method

.method private static native nGetGroupProperties(J[FI)Z
.end method

.method private static native nGetPivotX(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetPivotY(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetRootAlpha(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetRotation(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetScaleY(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetStrokeAlpha(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetStrokeColor(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetStrokeWidth(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetTranslateX(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetTranslateY(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetTrimPathEnd(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetTrimPathOffset(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetTrimPathStart(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetAllowCaching(JZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetFillAlpha(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetFillColor(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetPathData(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetPathString(JLjava/lang/String;I)V
.end method

.method private static native nSetPivotX(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetPivotY(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetRendererViewportSize(JFF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetRootAlpha(JF)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetRotation(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetScaleX(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetScaleY(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetStrokeAlpha(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetStrokeColor(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetStrokeWidth(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetTranslateX(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetTranslateY(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetTrimPathEnd(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetTrimPathOffset(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetTrimPathStart(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nUpdateFullPathFillGradient(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nUpdateFullPathProperties(JFIFIFFFFFIII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nUpdateFullPathStrokeGradient(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nUpdateGroupProperties(JFFFFFFF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private needMirroring()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->isAutoMirrored()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 4

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v1, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v12

    or-int/2addr v11, v12

    iput v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v11

    iput-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    const/4 v11, 0x6

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_0

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v8, v11}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v11

    iput-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    if-eqz v7, :cond_1

    iput-object v7, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    :cond_1
    iget-boolean v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    const/4 v12, 0x5

    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    const/4 v12, 0x7

    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    const/16 v12, 0x8

    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    invoke-virtual {v6, v10, v9}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setViewportSize(FF)V

    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_2

    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_3

    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_3
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    const/4 v12, 0x3

    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    const/4 v12, 0x2

    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    if-gtz v11, :cond_4

    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "<vector> tag requires width > 0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    if-gtz v11, :cond_5

    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "<vector> tag requires height > 0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v11, v11, Landroid/graphics/Insets;->left:I

    const/16 v12, 0xa

    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v11, v11, Landroid/graphics/Insets;->top:I

    const/16 v12, 0xc

    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v11, v11, Landroid/graphics/Insets;->right:I

    const/16 v12, 0xb

    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v11, v11, Landroid/graphics/Insets;->bottom:I

    const/16 v12, 0x9

    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-static {v2, v4, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v11

    iput-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getAlpha()F

    move-result v11

    const/4 v12, 0x4

    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    iput-object v5, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 8

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setDensity(I)Z

    move-result v1

    iget-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    or-int/2addr v4, v1

    iput-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    sget-object v5, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    :cond_1
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    :cond_2
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v4
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    return-void
.end method

.method computeVectorSize()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v4, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    iget v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    if-eq v5, v4, :cond_0

    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    invoke-static {v7, v4, v5, v9}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v7

    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    invoke-static {v7, v4, v5, v9}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v7

    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    iget v7, v2, Landroid/graphics/Insets;->left:I

    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v1

    iget v7, v2, Landroid/graphics/Insets;->right:I

    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iget v7, v2, Landroid/graphics/Insets;->top:I

    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v6

    iget v7, v2, Landroid/graphics/Insets;->bottom:I

    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    invoke-static {v1, v6, v3, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v7

    iput-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    :goto_0
    iput-boolean v8, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    return-void

    :cond_0
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v9, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    if-nez v9, :cond_3

    const-wide/16 v4, 0x0

    :goto_1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canReuseCache()Z

    move-result v8

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v2

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable;->needMirroring()Z

    move-result v7

    invoke-static/range {v0 .. v8}, Landroid/graphics/drawable/VectorDrawable;->nDraw(JJJLandroid/graphics/Rect;ZZ)I

    move-result v11

    if-nez v11, :cond_4

    return-void

    :cond_2
    iget-object v9, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    sub-int v0, v11, v0

    mul-int/lit8 v10, v0, 0x4

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iput v11, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    :goto_2
    if-lez v10, :cond_7

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v10}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    sub-int v0, v11, v0

    mul-int/lit8 v10, v0, 0x4

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iput v11, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    goto :goto_2

    :cond_7
    if-gez v10, :cond_5

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    neg-int v1, v10

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    goto :goto_3
.end method

.method public getAlpha()I
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getAlpha()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    return v0
.end method

.method public getNativeTree()J
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOpacity()I
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getAlpha()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getPixelSize()F
    .locals 8

    const/4 v7, 0x0

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    if-nez v6, :cond_1

    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    return v6

    :cond_1
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    int-to-float v1, v6

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    int-to-float v0, v6

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v5, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v4, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    div-float v2, v5, v1

    div-float v3, v4, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    return v6
.end method

.method getTargetByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->hasFocusStateSpecified()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v2, :cond_1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativeSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    new-instance v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    iput-object v3, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v2, :cond_2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const/16 v3, 0x13c

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    :cond_2
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-static {v2, v3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->-wrap0(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    :cond_3
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setDensity(I)Z

    sget-object v2, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v5, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    iput-boolean v5, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onTreeConstructionFinished()V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->isStateful()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onStateChange([I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v4, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method setAllowCaching(Z)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->nSetAllowCaching(JZ)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iput-boolean p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v2}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v2, p1}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
