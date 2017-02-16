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
    .param p0, "pathPtr"    # J
    .param p2, "properties"    # [B
    .param p3, "length"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nGetFullPathProperties(J[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(J[FI)Z
    .locals 2
    .param p0, "groupPtr"    # J
    .param p2, "properties"    # [F
    .param p3, "length"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nGetGroupProperties(J[FI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(J)F
    .locals 2
    .param p0, "pathPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeAlpha(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(J)F
    .locals 2
    .param p0, "pathPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeWidth(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTranslateX(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTranslateY(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(J)F
    .locals 2
    .param p0, "pathPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathEnd(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(J)F
    .locals 2
    .param p0, "pathPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathOffset(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(J)F
    .locals 2
    .param p0, "pathPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathStart(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap17(J)I
    .locals 2
    .param p0, "pathPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetFillColor(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap18(J)I
    .locals 2
    .param p0, "pathPtr"    # J

    .prologue
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
    .param p0, "rendererPtr"    # J
    .param p2, "alpha"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetRootAlpha(JF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(J)J
    .locals 2
    .param p0, "clipPathPtr"    # J

    .prologue
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
    .param p0, "nativeFullPathPtr"    # J

    .prologue
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
    .param p0, "groupPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateGroup(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap25(JJ)J
    .locals 2
    .param p0, "treeToCopy"    # J
    .param p2, "rootGroupPtr"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nCreateTreeFromCopy(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap26(J)J
    .locals 2
    .param p0, "rootGroupPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateTree(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap27(JJ)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "nodePtr"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nAddChild(JJ)V

    return-void
.end method

.method static synthetic -wrap28(JF)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "fillAlpha"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetFillAlpha(JF)V

    return-void
.end method

.method static synthetic -wrap29(JI)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "fillColor"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetFillColor(JI)V

    return-void
.end method

.method static synthetic -wrap3(J)F
    .locals 2
    .param p0, "pathPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetFillAlpha(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(JLjava/lang/String;)V
    .locals 0
    .param p0, "nodePtr"    # J
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetName(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap31(JJ)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "pathDataPtr"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetPathData(JJ)V

    return-void
.end method

.method static synthetic -wrap32(JLjava/lang/String;I)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "pathString"    # Ljava/lang/String;
    .param p3, "length"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetPathString(JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap33(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "pivotX"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetPivotX(JF)V

    return-void
.end method

.method static synthetic -wrap34(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "pivotY"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetPivotY(JF)V

    return-void
.end method

.method static synthetic -wrap35(JFF)V
    .locals 0
    .param p0, "rendererPtr"    # J
    .param p2, "viewportWidth"    # F
    .param p3, "viewportHeight"    # F

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetRendererViewportSize(JFF)V

    return-void
.end method

.method static synthetic -wrap36(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "rotation"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetRotation(JF)V

    return-void
.end method

.method static synthetic -wrap37(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "scaleX"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetScaleX(JF)V

    return-void
.end method

.method static synthetic -wrap38(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "scaleY"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetScaleY(JF)V

    return-void
.end method

.method static synthetic -wrap39(JF)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "alpha"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeAlpha(JF)V

    return-void
.end method

.method static synthetic -wrap4(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetPivotX(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(JI)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "strokeColor"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeColor(JI)V

    return-void
.end method

.method static synthetic -wrap41(JF)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "width"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeWidth(JF)V

    return-void
.end method

.method static synthetic -wrap42(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "translateX"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTranslateX(JF)V

    return-void
.end method

.method static synthetic -wrap43(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "translateY"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTranslateY(JF)V

    return-void
.end method

.method static synthetic -wrap44(JF)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "trimPathEnd"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathEnd(JF)V

    return-void
.end method

.method static synthetic -wrap45(JF)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "trimPathOffset"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathOffset(JF)V

    return-void
.end method

.method static synthetic -wrap46(JF)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "trimPathStart"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathStart(JF)V

    return-void
.end method

.method static synthetic -wrap47(JJ)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "fillGradientPtr"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathFillGradient(JJ)V

    return-void
.end method

.method static synthetic -wrap48(JFIFIFFFFFIII)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "strokeWidth"    # F
    .param p3, "strokeColor"    # I
    .param p4, "strokeAlpha"    # F
    .param p5, "fillColor"    # I
    .param p6, "fillAlpha"    # F
    .param p7, "trimPathStart"    # F
    .param p8, "trimPathEnd"    # F
    .param p9, "trimPathOffset"    # F
    .param p10, "strokeMiterLimit"    # F
    .param p11, "strokeLineCap"    # I
    .param p12, "strokeLineJoin"    # I
    .param p13, "fillType"    # I

    .prologue
    invoke-static/range {p0 .. p13}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathProperties(JFIFIFFFFFIII)V

    return-void
.end method

.method static synthetic -wrap49(JJ)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "strokeGradientPtr"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathStrokeGradient(JJ)V

    return-void
.end method

.method static synthetic -wrap5(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetPivotY(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap50(JFFFFFFF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "rotate"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F
    .param p5, "scaleX"    # F
    .param p6, "scaleY"    # F
    .param p7, "translateX"    # F
    .param p8, "translateY"    # F

    .prologue
    invoke-static/range {p0 .. p8}, Landroid/graphics/drawable/VectorDrawable;->nUpdateGroupProperties(JFFFFFFF)V

    return-void
.end method

.method static synthetic -wrap6(J)F
    .locals 2
    .param p0, "rendererPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetRootAlpha(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetRotation(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetScaleX(J)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetScaleY(J)F

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    const-class v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    .line 234
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x0

    .line 242
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 224
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    .line 225
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    .line 226
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 232
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    .line 243
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 244
    invoke-direct {p0, p2}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 242
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public static create(Landroid/content/res/Resources;I)Landroid/graphics/drawable/VectorDrawable;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "rid"    # I

    .prologue
    const/4 v7, 0x2

    .line 544
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 545
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 547
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    if-eq v5, v7, :cond_1

    .line 548
    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 551
    :cond_1
    if-eq v5, v7, :cond_2

    .line 552
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v7, "No start tag found"

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 559
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_0
    move-exception v3

    .line 560
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v6, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v7, "parser error"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    const/4 v6, 0x0

    return-object v6

    .line 555
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    :cond_2
    :try_start_1
    new-instance v1, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    .line 556
    .local v1, "drawable":Landroid/graphics/drawable/VectorDrawable;
    invoke-virtual {v1, p0, v4, v0}, Landroid/graphics/drawable/VectorDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 558
    return-object v1

    .line 561
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "drawable":Landroid/graphics/drawable/VectorDrawable;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_1
    move-exception v2

    .line 562
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v7, "parser error"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 16
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 678
    .local v10, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    const/4 v7, 0x1

    .line 682
    .local v7, "noPathTag":Z
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 683
    .local v5, "groupStack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/drawable/VectorDrawable$VGroup;>;"
    iget-object v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v5, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 686
    .local v4, "eventType":I
    :goto_0
    const/4 v13, 0x1

    if-eq v4, v13, :cond_7

    .line 687
    const/4 v13, 0x2

    if-ne v4, v13, :cond_6

    .line 688
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 689
    .local v12, "tagName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 691
    .local v3, "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    const-string/jumbo v13, "path"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 692
    new-instance v9, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {v9}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>()V

    .line 693
    .local v9, "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 694
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 695
    invoke-virtual {v9}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 696
    iget-object v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_0
    const/4 v7, 0x0

    .line 699
    iget v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget v14, v9, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    or-int/2addr v13, v14

    iput v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 725
    .end local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v9    # "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .end local v12    # "tagName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 700
    .restart local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .restart local v12    # "tagName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v13, "clip-path"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 701
    new-instance v8, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    invoke-direct {v8}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>()V

    .line 702
    .local v8, "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 703
    invoke-virtual {v3, v8}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 704
    invoke-virtual {v8}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 705
    iget-object v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    :cond_3
    iget v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget v14, v8, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    or-int/2addr v13, v14

    iput v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    goto :goto_1

    .line 708
    .end local v8    # "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    :cond_4
    const-string/jumbo v13, "group"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 709
    new-instance v6, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    .line 710
    .local v6, "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 711
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 712
    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 714
    iget-object v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_5
    iget v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    invoke-static {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get0(Landroid/graphics/drawable/VectorDrawable$VGroup;)I

    move-result v14

    or-int/2addr v13, v14

    iput v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    goto :goto_1

    .line 719
    .end local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v6    # "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v12    # "tagName":Ljava/lang/String;
    :cond_6
    const/4 v13, 0x3

    if-ne v4, v13, :cond_1

    .line 720
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 721
    .restart local v12    # "tagName":Ljava/lang/String;
    const-string/jumbo v13, "group"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 722
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 728
    .end local v12    # "tagName":Ljava/lang/String;
    :cond_7
    if-eqz v7, :cond_9

    .line 729
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 731
    .local v11, "tag":Ljava/lang/StringBuffer;
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_8

    .line 732
    const-string/jumbo v13, " or "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 734
    :cond_8
    const-string/jumbo v13, "path"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 736
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "no "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " defined"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 676
    .end local v11    # "tag":Ljava/lang/StringBuffer;
    :cond_9
    return-void
.end method

.method private static native nAddChild(JJ)V
.end method

.method private static native nCreateClipPath()J
.end method

.method private static native nCreateClipPath(J)J
.end method

.method private static native nCreateFullPath()J
.end method

.method private static native nCreateFullPath(J)J
.end method

.method private static native nCreateGroup()J
.end method

.method private static native nCreateGroup(J)J
.end method

.method private static native nCreateTree(J)J
.end method

.method private static native nCreateTreeFromCopy(JJ)J
.end method

.method private static native nDraw(JJJLandroid/graphics/Rect;ZZ)I
.end method

.method private static native nGetFillAlpha(J)F
.end method

.method private static native nGetFillColor(J)I
.end method

.method private static native nGetFullPathProperties(J[BI)Z
.end method

.method private static native nGetGroupProperties(J[FI)Z
.end method

.method private static native nGetPivotX(J)F
.end method

.method private static native nGetPivotY(J)F
.end method

.method private static native nGetRootAlpha(J)F
.end method

.method private static native nGetRotation(J)F
.end method

.method private static native nGetScaleX(J)F
.end method

.method private static native nGetScaleY(J)F
.end method

.method private static native nGetStrokeAlpha(J)F
.end method

.method private static native nGetStrokeColor(J)I
.end method

.method private static native nGetStrokeWidth(J)F
.end method

.method private static native nGetTranslateX(J)F
.end method

.method private static native nGetTranslateY(J)F
.end method

.method private static native nGetTrimPathEnd(J)F
.end method

.method private static native nGetTrimPathOffset(J)F
.end method

.method private static native nGetTrimPathStart(J)F
.end method

.method private static native nSetAllowCaching(JZ)V
.end method

.method private static native nSetFillAlpha(JF)V
.end method

.method private static native nSetFillColor(JI)V
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetPathData(JJ)V
.end method

.method private static native nSetPathString(JLjava/lang/String;I)V
.end method

.method private static native nSetPivotX(JF)V
.end method

.method private static native nSetPivotY(JF)V
.end method

.method private static native nSetRendererViewportSize(JFF)V
.end method

.method private static native nSetRootAlpha(JF)Z
.end method

.method private static native nSetRotation(JF)V
.end method

.method private static native nSetScaleX(JF)V
.end method

.method private static native nSetScaleY(JF)V
.end method

.method private static native nSetStrokeAlpha(JF)V
.end method

.method private static native nSetStrokeColor(JI)V
.end method

.method private static native nSetStrokeWidth(JF)V
.end method

.method private static native nSetTranslateX(JF)V
.end method

.method private static native nSetTranslateY(JF)V
.end method

.method private static native nSetTrimPathEnd(JF)V
.end method

.method private static native nSetTrimPathOffset(JF)V
.end method

.method private static native nSetTrimPathStart(JF)V
.end method

.method private static native nUpdateFullPathFillGradient(JJ)V
.end method

.method private static native nUpdateFullPathProperties(JFIFIFFFFFIII)V
.end method

.method private static native nUpdateFullPathStrokeGradient(JJ)V
.end method

.method private static native nUpdateGroupProperties(JFFFFFFF)V
.end method

.method private needMirroring()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 750
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
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 256
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v1, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    .line 257
    .local v0, "density":I
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    if-eq v1, v0, :cond_0

    .line 258
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 262
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 255
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 14
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 606
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 609
    .local v6, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v12

    or-int/2addr v11, v12

    iput v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 612
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v11

    iput-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    .line 614
    const/4 v11, 0x6

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 615
    .local v8, "tintMode":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_0

    .line 616
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v8, v11}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v11

    iput-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 619
    :cond_0
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 620
    .local v7, "tint":Landroid/content/res/ColorStateList;
    if-eqz v7, :cond_1

    .line 621
    iput-object v7, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 625
    :cond_1
    iget-boolean v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    const/4 v12, 0x5

    .line 624
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    .line 628
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    const/4 v12, 0x7

    .line 627
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 630
    .local v10, "viewportWidth":F
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    const/16 v12, 0x8

    .line 629
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 631
    .local v9, "viewportHeight":F
    invoke-virtual {v6, v10, v9}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setViewportSize(FF)V

    .line 633
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_2

    .line 634
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 635
    const-string/jumbo v13, "<vector> tag requires viewportWidth > 0"

    .line 634
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 636
    :cond_2
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_3

    .line 637
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 638
    const-string/jumbo v13, "<vector> tag requires viewportHeight > 0"

    .line 637
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 642
    :cond_3
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    const/4 v12, 0x3

    .line 641
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    .line 644
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    const/4 v12, 0x2

    .line 643
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    .line 646
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_4

    .line 647
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 648
    const-string/jumbo v13, "<vector> tag requires width > 0"

    .line 647
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 649
    :cond_4
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_5

    .line 650
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 651
    const-string/jumbo v13, "<vector> tag requires height > 0"

    .line 650
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 655
    :cond_5
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v11, v11, Landroid/graphics/Insets;->left:I

    const/16 v12, 0x9

    .line 654
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 657
    .local v2, "insetLeft":I
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v11, v11, Landroid/graphics/Insets;->top:I

    const/16 v12, 0xa

    .line 656
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 659
    .local v4, "insetTop":I
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v11, v11, Landroid/graphics/Insets;->right:I

    const/16 v12, 0xb

    .line 658
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 661
    .local v3, "insetRight":I
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v11, v11, Landroid/graphics/Insets;->bottom:I

    const/16 v12, 0xc

    .line 660
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 662
    .local v1, "insetBottom":I
    invoke-static {v2, v4, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v11

    iput-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 665
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getAlpha()F

    move-result v11

    const/4 v12, 0x4

    .line 664
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 666
    .local v0, "alphaInFloat":F
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    .line 668
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 669
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 670
    iput-object v5, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    .line 671
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :cond_6
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 8
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    const/4 v7, 0x1

    .line 478
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 480
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 481
    .local v3, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    if-nez v3, :cond_0

    .line 482
    return-void

    .line 485
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 486
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v5

    .line 485
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setDensity(I)Z

    move-result v1

    .line 487
    .local v1, "changedDensity":Z
    iget-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    or-int/2addr v4, v1

    iput-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 489
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-eqz v4, :cond_1

    .line 491
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    sget-object v5, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    .line 490
    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 493
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    .line 494
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 502
    iput-boolean v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 506
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 507
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 510
    :cond_2
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 511
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 515
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 477
    return-void

    .line 495
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v2

    .line 496
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    .line 498
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 497
    throw v4
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 473
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

    .prologue
    .line 278
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    .line 277
    return-void
.end method

.method computeVectorSize()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 444
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 446
    .local v2, "opticalInsets":Landroid/graphics/Insets;
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v4, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 447
    .local v4, "sourceDensity":I
    iget v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    .line 448
    .local v5, "targetDensity":I
    if-eq v5, v4, :cond_0

    .line 450
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    float-to-int v7, v7

    .line 449
    invoke-static {v7, v4, v5, v9}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v7

    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    .line 452
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    float-to-int v7, v7

    .line 451
    invoke-static {v7, v4, v5, v9}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v7

    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    .line 454
    iget v7, v2, Landroid/graphics/Insets;->left:I

    .line 453
    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v1

    .line 456
    .local v1, "left":I
    iget v7, v2, Landroid/graphics/Insets;->right:I

    .line 455
    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    .line 458
    .local v3, "right":I
    iget v7, v2, Landroid/graphics/Insets;->top:I

    .line 457
    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v6

    .line 460
    .local v6, "top":I
    iget v7, v2, Landroid/graphics/Insets;->bottom:I

    .line 459
    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    .line 461
    .local v0, "bottom":I
    invoke-static {v1, v6, v3, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v7

    iput-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    .line 468
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v3    # "right":I
    .end local v6    # "top":I
    :goto_0
    iput-boolean v8, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 443
    return-void

    .line 463
    :cond_0
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    float-to-int v7, v7

    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    .line 464
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    float-to-int v7, v7

    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    .line 465
    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 296
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 297
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    .line 299
    :cond_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v9, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 304
    .local v9, "colorFilter":Landroid/graphics/ColorFilter;
    :goto_0
    if-nez v9, :cond_3

    const-wide/16 v4, 0x0

    .line 306
    .local v4, "colorFilterNativeInstance":J
    :goto_1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canReuseCache()Z

    move-result v8

    .line 307
    .local v8, "canReuseCache":Z
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v2

    .line 308
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable;->needMirroring()Z

    move-result v7

    .line 307
    invoke-static/range {v0 .. v8}, Landroid/graphics/drawable/VectorDrawable;->nDraw(JJJLandroid/graphics/Rect;ZZ)I

    move-result v11

    .line 310
    .local v11, "pixelCount":I
    if-nez v11, :cond_4

    .line 313
    return-void

    .line 303
    .end local v4    # "colorFilterNativeInstance":J
    .end local v8    # "canReuseCache":Z
    .end local v9    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v11    # "pixelCount":I
    :cond_2
    iget-object v9, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 305
    .restart local v9    # "colorFilter":Landroid/graphics/ColorFilter;
    :cond_3
    iget-wide v4, v9, Landroid/graphics/ColorFilter;->native_instance:J

    .restart local v4    # "colorFilterNativeInstance":J
    goto :goto_1

    .line 320
    .restart local v8    # "canReuseCache":Z
    .restart local v11    # "pixelCount":I
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 322
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    sub-int v0, v11, v0

    mul-int/lit8 v10, v0, 0x4

    .line 323
    .local v10, "deltaInBytes":I
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iput v11, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    .line 329
    :goto_2
    if-lez v10, :cond_7

    .line 330
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v10}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 293
    :cond_5
    :goto_3
    return-void

    .line 326
    .end local v10    # "deltaInBytes":I
    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    sub-int v0, v11, v0

    mul-int/lit8 v10, v0, 0x4

    .line 327
    .restart local v10    # "deltaInBytes":I
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iput v11, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    goto :goto_2

    .line 331
    :cond_7
    if-gez v10, :cond_5

    .line 332
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    neg-int v1, v10

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    goto :goto_3
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 339
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

    .prologue
    .line 742
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

    .prologue
    .line 357
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 289
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    .line 427
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    .line 419
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 411
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

    .prologue
    .line 433
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    .line 436
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getPixelSize()F
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 525
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v6, :cond_0

    .line 526
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 530
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    return v6

    .line 527
    :cond_1
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 528
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 529
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 532
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v1, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    .line 533
    .local v1, "intrinsicWidth":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    .line 534
    .local v0, "intrinsicHeight":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v5, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    .line 535
    .local v5, "viewportWidth":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v4, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    .line 536
    .local v4, "viewportHeight":F
    div-float v2, v5, v1

    .line 537
    .local v2, "scaleX":F
    div-float v3, v4, v0

    .line 538
    .local v3, "scaleY":F
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    return v6
.end method

.method getTargetByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 571
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v2, :cond_3

    .line 573
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v2, :cond_1

    .line 575
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativeSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 577
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 579
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    new-instance v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    iput-object v3, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 580
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v2, :cond_2

    .line 583
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const/16 v3, 0x13c

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 584
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 586
    :cond_2
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-static {v2, v3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->-wrap0(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    .line 588
    :cond_3
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 589
    .local v1, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setDensity(I)Z

    .line 591
    sget-object v2, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 592
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 593
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 595
    iput-boolean v5, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 597
    iput-boolean v5, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    .line 598
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 600
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onTreeConstructionFinished()V

    .line 602
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 570
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 382
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

    .prologue
    .line 267
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 268
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    .line 271
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "stateSet"    # [I

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 391
    .local v0, "changed":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 394
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 395
    .local v1, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onStateChange([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    const/4 v0, 0x1

    .line 397
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    .line 399
    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_2

    .line 400
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v4, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 401
    const/4 v0, 0x1

    .line 404
    :cond_2
    return v0
.end method

.method setAllowCaching(Z)V
    .locals 2
    .param p1, "allowCaching"    # Z

    .prologue
    .line 746
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->nSetAllowCaching(JZ)V

    .line 745
    return-void
.end method

.method public setAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 344
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 343
    :cond_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .prologue
    .line 755
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    .line 756
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iput-boolean p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    .line 757
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 754
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 351
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 352
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 350
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 362
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 363
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 364
    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 365
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v2}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 366
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 361
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 373
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 374
    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 375
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v2, p1}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 376
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 371
    :cond_0
    return-void
.end method
