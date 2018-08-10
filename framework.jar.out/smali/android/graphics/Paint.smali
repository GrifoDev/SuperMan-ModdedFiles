.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$Gradient;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$MyanmarEncoding;,
        Landroid/graphics/Paint$NoImagePreloadHolder;,
        Landroid/graphics/Paint$Style;
    }
.end annotation


# static fields
.field public static final ANTI_ALIAS_FLAG:I = 0x1

.field public static final AUTO_HINTING_TEXT_FLAG:I = 0x800

.field public static final BIDI_DEFAULT_LTR:I = 0x2

.field public static final BIDI_DEFAULT_RTL:I = 0x3

.field private static final BIDI_FLAG_MASK:I = 0x7

.field public static final BIDI_FORCE_LTR:I = 0x4

.field public static final BIDI_FORCE_RTL:I = 0x5

.field public static final BIDI_LTR:I = 0x0

.field private static final BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final BIDI_RTL:I = 0x1

.field public static final CURSOR_AFTER:I = 0x0

.field public static final CURSOR_AT:I = 0x4

.field public static final CURSOR_AT_OR_AFTER:I = 0x1

.field public static final CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final CURSOR_BEFORE:I = 0x2

.field private static final CURSOR_OPT_MAX_VALUE:I = 0x4

.field private static final DEBUG:Z = false

.field public static final DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final DITHER_FLAG:I = 0x4

.field public static final EMBEDDED_BITMAP_TEXT_FLAG:I = 0x400

.field public static final FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final FILTER_BITMAP_FLAG:I = 0x2

.field static final HIDDEN_DEFAULT_PAINT_FLAGS:I = 0x500

.field public static final HINTING_OFF:I = 0x0

.field public static final HINTING_ON:I = 0x1

.field public static final HYPHENEDIT_MASK_END_OF_LINE:I = 0x7

.field public static final HYPHENEDIT_MASK_START_OF_LINE:I = 0x18

.field public static final LCD_RENDER_TEXT_FLAG:I = 0x200

.field public static final LINEAR_TEXT_FLAG:I = 0x40

.field private static final NATIVE_PAINT_SIZE:J = 0x62L

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field private static final TAG:Ljava/lang/String; = "Paint"

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final VERTICAL_TEXT_FLAG:I = 0x1000

.field static final sAlignArray:[Landroid/graphics/Paint$Align;

.field private static final sCacheLock:Ljava/lang/Object;

.field static final sCapArray:[Landroid/graphics/Paint$Cap;

.field static final sJoinArray:[Landroid/graphics/Paint$Join;

.field private static final sMinikinLangListIdCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public mBidiFlags:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mFontFeatureSettings:Ljava/lang/String;

.field private mFontVariationSettings:Ljava/lang/String;

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mLocales:Landroid/os/LocaleList;

.field private mMaskFilter:Landroid/graphics/MaskFilter;

.field private mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

.field private mNativeColorFilter:J

.field private mNativePaint:J

.field private mNativeShader:J

.field public mNativeTypeface:J

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mShader:Landroid/graphics/Shader;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mUseCustomMyanmarEncoding:Z

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static synthetic -wrap0()J
    .locals 2

    invoke-static {}, Landroid/graphics/Paint;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    new-array v0, v5, [Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    new-array v0, v5, [Landroid/graphics/Paint$Cap;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    new-array v0, v5, [Landroid/graphics/Paint$Join;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    new-array v0, v5, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static {}, Landroid/graphics/Paint;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    or-int/lit16 v0, p1, 0x500

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nInitWithPaint(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    return-void
.end method

.method private static native nAscent(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nBreakText(JJLjava/lang/String;ZFI[F)I
.end method

.method private static native nBreakText(JJ[CIIFI[F)I
.end method

.method private static native nDescent(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetAlpha(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V
.end method

.method private static native nGetColor(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFillPath(JJJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetFontMetricsInt(JJLandroid/graphics/Paint$FontMetricsInt;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetHinting(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetHyphenEdit(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLetterSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetNativeFinalizer()J
.end method

.method private static native nGetOffsetForAdvance(JJ[CIIIIZF)I
.end method

.method private static native nGetRunAdvance(JJ[CIIIIZI)F
.end method

.method private static native nGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private static native nGetStrokeCap(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeJoin(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeMiter(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeWidth(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F
.end method

.method private static native nGetTextAdvances(JJ[CIIIII[FI)F
.end method

.method private static native nGetTextAlign(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextPath(JJILjava/lang/String;IIFFJ)V
.end method

.method private static native nGetTextPath(JJI[CIIFFJ)V
.end method

.method private native nGetTextRunCursor(JJLjava/lang/String;IIIII)I
.end method

.method private native nGetTextRunCursor(JJ[CIIIII)I
.end method

.method private static native nGetTextScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextSize(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextSkewX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetWordSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nHasGlyph(JJILjava/lang/String;)Z
.end method

.method private static native nHasShadowLayer(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInit()J
.end method

.method private static native nInitWithPaint(J)J
.end method

.method private static native nIsElegantTextHeight(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSet(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetAlpha(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetAntiAlias(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetColor(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetColorFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetDither(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetElegantTextHeight(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFakeBoldText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFilterBitmap(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFontFeatureSettings(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetHinting(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetHyphenEdit(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLetterSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLinearText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetMaskFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetMyanmarEncoding(JI)V
.end method

.method private static native nSetPathEffect(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetShader(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetShadowLayer(JFFFI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrikeThruText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeCap(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeJoin(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeMiter(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeWidth(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStyle(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetSubpixelText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextAlign(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextLocales(JLjava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetTextLocalesByMinikinLangListId(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextScaleX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextSize(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextSkewX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTypeface(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetUnderlineText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetWordSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetXfermode(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private native native_addInnerShadowTextEffect(JFFFIF)I
.end method

.method private native native_addLinearGradientTextEffect(JFF[I[F[FF)I
.end method

.method private native native_addOuterGlowTextEffect(JFIF)I
.end method

.method private native native_addOuterShadowTextEffect(JFFFIF)I
.end method

.method private native native_addStrokeTextEffect(JFIF)I
.end method

.method private native native_clearAllTextEffect(J)V
.end method

.method private native native_clearTextEffectOpacity(J)V
.end method

.method private native native_getTextEffectOffsetBottom(J)I
.end method

.method private native native_getTextEffectOffsetLeft(J)I
.end method

.method private native native_getTextEffectOffsetRight(J)I
.end method

.method private native native_getTextEffectOffsetTop(J)I
.end method

.method private native native_hasTextEffect(J)Z
.end method

.method private native native_removeTextEffect(JI)V
.end method

.method private native native_setTextEffectOpacity(JF)V
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .locals 2

    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeShader:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeTypeface:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    iget-object v0, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    iget-object v0, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iget-boolean v0, v0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v0, v0, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    :cond_0
    iget-object v0, p1, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    iget-boolean v0, p1, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    return-void
.end method

.method private syncTextLocalesWithMinikin()V
    .locals 8

    iget-object v3, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v6, v7, v0}, Landroid/graphics/Paint;->nSetTextLocales(JLjava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_0
    monitor-exit v4

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v5, v3}, Landroid/graphics/Paint;->nSetTextLocalesByMinikinLangListId(JI)V

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public ascent()F
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nAscent(JJ)F

    move-result v0

    return v0
.end method

.method public breakText(Ljava/lang/CharSequence;IIZF[F)I
    .locals 7

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    or-int v0, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v0, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v0, v3

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, p3, :cond_3

    :cond_2
    return v2

    :cond_3
    if-nez p2, :cond_4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_4

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    return v0

    :cond_4
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-eqz p4, :cond_5

    sub-int v3, p3, p2

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    :goto_0
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v6

    :cond_5
    sub-int v0, p3, p2

    neg-int v3, v0

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    goto :goto_0
.end method

.method public breakText(Ljava/lang/String;ZF[F)I
    .locals 11

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nBreakText(JJLjava/lang/String;ZFI[F)I

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v9

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v6, p3, v4

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nBreakText(JJLjava/lang/String;ZFI[F)I

    move-result v10

    invoke-virtual {p0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p4, :cond_3

    const/4 v0, 0x0

    aget v1, p4, v0

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p4, v0

    :cond_3
    return v10
.end method

.method public breakText([CIIF[F)I
    .locals 12

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    array-length v0, p1

    if-eqz v0, :cond_3

    if-nez p3, :cond_4

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_5

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nBreakText(JJ[CIIFI[F)I

    move-result v0

    return v0

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v10

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v7, p4, v4

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nBreakText(JJ[CIIFI[F)I

    move-result v11

    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p5, :cond_6

    const/4 v0, 0x0

    aget v1, p5, v0

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p5, v0

    :cond_6
    return v11
.end method

.method public clearShadowLayer()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public descent()F
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nDescent(JJ)F

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetAlpha(J)I

    move-result v0

    return v0
.end method

.method public getBidiFlags()I
    .locals 1

    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public getColor()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetColor(J)I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .locals 6

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nGetFillPath(JJJ)Z

    move-result v0

    return v0
.end method

.method public getFlags()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetFlags(J)I

    move-result v0

    return v0
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Paint;->nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    return-object v0
.end method

.method public getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Paint;->nGetFontMetricsInt(JJLandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    return v0
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    return-object v0
.end method

.method public getFontSpacing()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getHCTStrokeWidth()F
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    const v2, 0x3d23d70a    # 0.04f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getHinting()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHinting(J)I

    move-result v0

    return v0
.end method

.method public getHyphenEdit()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public getLetterSpacing()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public getMyanmarEncoding()Landroid/graphics/Paint$MyanmarEncoding;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    return-object v0
.end method

.method public getNativeInstance()J
    .locals 8

    iget-object v4, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-nez v4, :cond_2

    const-wide/16 v2, 0x0

    :goto_0
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeShader:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    iput-wide v2, p0, Landroid/graphics/Paint;->mNativeShader:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeShader:J

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Paint;->nSetShader(JJ)J

    :cond_0
    iget-object v4, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v4, :cond_3

    const-wide/16 v0, 0x0

    :goto_1
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Paint;->nSetColorFilter(JJ)J

    :cond_1
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    return-wide v4

    :cond_2
    iget-object v4, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v4}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v4}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v0

    goto :goto_1
.end method

.method public getOffsetForAdvance(Ljava/lang/CharSequence;IIIIZF)I
    .locals 9

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v2, p2, p4

    or-int/2addr v0, v2

    sub-int v2, p3, p2

    or-int/2addr v0, v2

    sub-int v2, p5, p3

    or-int/2addr v0, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p5

    or-int/2addr v0, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    sub-int v0, p5, p4

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p1, p4, p5, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v2, p2, p4

    sub-int v3, p3, p4

    sub-int v5, p5, p4

    const/4 v4, 0x0

    move-object v0, p0

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Paint;->getOffsetForAdvance([CIIIIZF)I

    move-result v0

    add-int v8, v0, p4

    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v8
.end method

.method public getOffsetForAdvance([CIIIIZF)I
    .locals 11

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int v1, v1, p5

    or-int/2addr v0, v1

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Landroid/graphics/Paint;->nGetOffsetForAdvance(JJ[CIIIIZF)I

    move-result v0

    return v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F
    .locals 9

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    or-int v0, p4, p2

    or-int v0, v0, p7

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v2, p2, p4

    or-int/2addr v0, v2

    sub-int v2, p7, p2

    or-int/2addr v0, v2

    sub-int v2, p3, p7

    or-int/2addr v0, v2

    sub-int v2, p5, p3

    or-int/2addr v0, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p5

    or-int/2addr v0, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-ne p3, p2, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    sub-int v0, p5, p4

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p1, p4, p5, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v2, p2, p4

    sub-int v3, p3, p4

    sub-int v5, p5, p4

    sub-int v7, p7, p4

    const/4 v4, 0x0

    move-object v0, p0

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Paint;->getRunAdvance([CIIIIZI)F

    move-result v8

    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v8
.end method

.method public getRunAdvance([CIIIIZI)F
    .locals 11

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    or-int v0, p4, p2

    or-int v0, v0, p7

    or-int/2addr v0, p3

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p7, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p7

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int v1, v1, p5

    or-int/2addr v0, v1

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-ne p3, p2, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Landroid/graphics/Paint;->nGetRunAdvance(JJ[CIIIIZI)F

    move-result v0

    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 4

    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetStrokeCap(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeJoin()Landroid/graphics/Paint$Join;
    .locals 4

    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetStrokeJoin(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeMiter()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeMiter(J)F

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeWidth(J)F

    move-result v0

    return v0
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .locals 4

    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetStyle(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 4

    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetTextAlign(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V
    .locals 4

    const/4 v3, 0x0

    or-int v1, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_0
    if-nez p4, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "need bounds Rect"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sub-int v1, p3, p2

    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    invoke-static {p1, p2, p3, v0, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v1, p3, p2

    invoke-virtual {p0, v0, v3, v1, p4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return-void
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 9

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V

    return-void
.end method

.method public getTextBounds([CIILandroid/graphics/Rect;)V
    .locals 9

    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V

    return-void
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 2

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextLocales()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .locals 12

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v10

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextPath(JJILjava/lang/String;IIFFJ)V

    return-void
.end method

.method public getTextPath([CIIFFLandroid/graphics/Path;)V
    .locals 12

    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v10

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextPath(JJI[CIIFFJ)V

    return-void
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIIZ[FI)F
    .locals 11

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    or-int v1, p2, p3

    or-int/2addr v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v3, p3, p2

    or-int/2addr v1, v3

    sub-int v3, p2, p4

    or-int/2addr v1, v3

    sub-int v3, p5, p3

    or-int/2addr v1, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v3, v3, p5

    or-int/2addr v3, v1

    if-nez p7, :cond_1

    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v3

    if-gez v1, :cond_2

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    move-object/from16 v0, p7

    array-length v1, v0

    sub-int v1, v1, p8

    sub-int v5, p3, p2

    sub-int/2addr v1, v5

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    move-result v1

    return v1

    :cond_3
    instance-of v1, p1, Landroid/text/SpannedString;

    if-nez v1, :cond_4

    instance-of v1, p1, Landroid/text/SpannableString;

    if-eqz v1, :cond_5

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    move-result v1

    return v1

    :cond_5
    instance-of v1, p1, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Landroid/text/GraphicsOperations;

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object v9, p0

    invoke-interface/range {v1 .. v9}, Landroid/text/GraphicsOperations;->getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F

    move-result v1

    return v1

    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_7

    if-ne p3, p2, :cond_8

    :cond_7
    const/4 v1, 0x0

    return v1

    :cond_8
    sub-int v6, p5, p4

    sub-int v4, p3, p2

    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    const/4 v1, 0x0

    move/from16 v0, p5

    invoke-static {p1, p4, v0, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v3, p2, p4

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v10

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v10
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F
    .locals 18

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    sub-int v3, p2, p4

    or-int/2addr v2, v3

    sub-int v3, p5, p3

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p5

    or-int/2addr v3, v2

    if-nez p7, :cond_1

    const/4 v2, 0x0

    :goto_0
    or-int/2addr v2, v3

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    move-object/from16 v0, p7

    array-length v2, v0

    sub-int v2, v2, p8

    sub-int v4, p3, p2

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v2, 0x0

    return v2

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    if-eqz p6, :cond_5

    const/4 v11, 0x5

    :goto_1
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v2

    return v2

    :cond_5
    const/4 v11, 0x4

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    if-eqz p6, :cond_7

    const/4 v11, 0x5

    :goto_2
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p7, :cond_8

    move/from16 v15, p8

    sub-int v2, p3, p2

    add-int v14, p8, v2

    :goto_3
    if-ge v15, v14, :cond_8

    aget v2, p7, v15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p7, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_7
    const/4 v11, 0x4

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float v2, v2, v17

    return v2
.end method

.method public getTextRunAdvances([CIIIIZ[FI)F
    .locals 18

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v3, p2, p4

    or-int/2addr v2, v3

    sub-int v3, p5, p3

    or-int/2addr v2, v3

    add-int v3, p4, p5

    add-int v4, p2, p3

    sub-int/2addr v3, v4

    or-int/2addr v2, v3

    move-object/from16 v0, p1

    array-length v3, v0

    add-int v4, p4, p5

    sub-int/2addr v3, v4

    or-int/2addr v3, v2

    if-nez p7, :cond_1

    const/4 v2, 0x0

    :goto_0
    or-int/2addr v2, v3

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    move-object/from16 v0, p7

    array-length v2, v0

    add-int v4, p8, p3

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    array-length v2, v0

    if-eqz v2, :cond_3

    if-nez p3, :cond_4

    :cond_3
    const/4 v2, 0x0

    return v2

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    if-eqz p6, :cond_5

    const/4 v11, 0x5

    :goto_1
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v2

    return v2

    :cond_5
    const/4 v11, 0x4

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    if-eqz p6, :cond_7

    const/4 v11, 0x5

    :goto_2
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p7, :cond_8

    move/from16 v15, p8

    add-int v14, p8, p3

    :goto_3
    if-ge v15, v14, :cond_8

    aget v2, p7, v15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p7, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_7
    const/4 v11, 0x4

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float v2, v2, v17

    return v2
.end method

.method public getTextRunCursor(Ljava/lang/CharSequence;IIIII)I
    .locals 9

    const/4 v2, 0x0

    const/4 v8, -0x1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIIII)I

    move-result v0

    return v0

    :cond_1
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIIIILandroid/graphics/Paint;)I

    move-result v0

    return v0

    :cond_2
    sub-int v3, p3, p2

    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v5, p5, p2

    move-object v0, p0

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    if-ne v7, v8, :cond_3

    move v0, v8

    :goto_0
    return v0

    :cond_3
    add-int v0, v7, p2

    goto :goto_0
.end method

.method public getTextRunCursor(Ljava/lang/String;IIIII)I
    .locals 14

    or-int v2, p2, p3

    or-int v2, v2, p5

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    sub-int v3, p5, p2

    or-int/2addr v2, v3

    sub-int v3, p3, p5

    or-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    or-int v2, v2, p6

    if-ltz v2, :cond_0

    const/4 v2, 0x4

    move/from16 v0, p6

    if-le v0, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v3, p0

    move-object v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v3 .. v13}, Landroid/graphics/Paint;->nGetTextRunCursor(JJLjava/lang/String;IIIII)I

    move-result v2

    return v2
.end method

.method public getTextRunCursor([CIIIII)I
    .locals 14

    add-int v2, p2, p3

    or-int v3, p2, v2

    or-int v3, v3, p5

    sub-int v4, v2, p2

    or-int/2addr v3, v4

    sub-int v4, p5, p2

    or-int/2addr v3, v4

    sub-int v4, v2, p5

    or-int/2addr v3, v4

    array-length v4, p1

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    or-int v3, v3, p6

    if-ltz v3, :cond_0

    const/4 v3, 0x4

    move/from16 v0, p6

    if-le v0, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    :cond_1
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v3, p0

    move-object v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v3 .. v13}, Landroid/graphics/Paint;->nGetTextRunCursor(JJ[CIIIII)I

    move-result v3

    return v3
.end method

.method public getTextScaleX()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextScaleX(J)F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSize(J)F

    move-result v0

    return v0
.end method

.method public getTextSkewX()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSkewX(J)F

    move-result v0

    return v0
.end method

.method public getTextWidths(Ljava/lang/CharSequence;II[F)I
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    sub-int v2, p3, p2

    array-length v3, p4

    if-le v2, v3, :cond_2

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    if-ne p2, p3, :cond_4

    :cond_3
    return v4

    :cond_4
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v2

    return v2

    :cond_5
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_6

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_7

    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v2

    return v2

    :cond_7
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_8

    check-cast p1, Landroid/text/GraphicsOperations;

    invoke-interface {p1, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result v2

    return v2

    :cond_8
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v4, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v1
.end method

.method public getTextWidths(Ljava/lang/String;II[F)I
    .locals 16

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    sub-int v2, p3, p2

    move-object/from16 v0, p4

    array-length v3, v0

    if-le v2, v3, :cond_2

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v2, 0x0

    return v2

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    sub-int v2, p3, p2

    return v2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v14, 0x0

    :goto_0
    sub-int v2, p3, p2

    if-ge v14, v2, :cond_6

    aget v2, p4, v14

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p4, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_6
    sub-int v2, p3, p2

    return v2
.end method

.method public getTextWidths(Ljava/lang/String;[F)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0
.end method

.method public getTextWidths([CII[F)I
    .locals 16

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    or-int v2, p2, p3

    if-ltz v2, :cond_1

    add-int v2, p2, p3

    move-object/from16 v0, p1

    array-length v3, v0

    if-le v2, v3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_2
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, p3

    if-gt v0, v2, :cond_1

    move-object/from16 v0, p1

    array-length v2, v0

    if-eqz v2, :cond_3

    if-nez p3, :cond_4

    :cond_3
    const/4 v2, 0x0

    return v2

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    return p3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v14, v0, :cond_6

    aget v2, p4, v14

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p4, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_6
    return p3
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getWordSpacing()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetWordSpacing(J)F

    move-result v0

    return v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 6

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nHasGlyph(JJILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasShadowLayer()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nHasShadowLayer(J)Z

    move-result v0

    return v0
.end method

.method public final isAntiAlias()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isDither()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isElegantTextHeight()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nIsElegantTextHeight(J)Z

    move-result v0

    return v0
.end method

.method public final isFakeBoldText()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isFilterBitmap()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isLinearText()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isStrikeThruText()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isSubpixelText()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isUnderlineText()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public measureText(Ljava/lang/CharSequence;II)F
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_2

    if-ne p2, p3, :cond_3

    :cond_2
    const/4 v2, 0x0

    return v2

    :cond_3
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_4

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    return v2

    :cond_4
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_5

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_6

    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    return v2

    :cond_6
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_7

    check-cast p1, Landroid/text/GraphicsOperations;

    invoke-interface {p1, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result v2

    return v2

    :cond_7
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v4, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v1
.end method

.method public measureText(Ljava/lang/String;)F
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0
.end method

.method public measureText(Ljava/lang/String;II)F
    .locals 16

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v2, 0x0

    return v2

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v15

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public measureText([CII)F
    .locals 14

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    or-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    array-length v0, p1

    if-eqz v0, :cond_3

    if-nez p3, :cond_4

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-virtual {p0, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_5

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v12

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v13

    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v0, v13

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public reset()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nReset(J)V

    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    iput-object v2, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v2, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v2, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v2, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeShader:J

    iput-object v2, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iput-object v2, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-boolean v4, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    iput v3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setElegantTextHeight(Z)V

    iput-object v2, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v2, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    sget-object v0, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    return-void
.end method

.method public semAddInnerShadowTextEffect(FFFIF)I
    .locals 9

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/graphics/Paint;->native_addInnerShadowTextEffect(JFFFIF)I

    move-result v0

    return v0
.end method

.method public semAddLinearGradientTextEffect(FF[I[F[FF)I
    .locals 15

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_2

    :cond_0
    const/4 v3, 0x0

    new-array v0, v3, [I

    move-object/from16 p3, v0

    const/4 v3, 0x0

    new-array v0, v3, [F

    move-object/from16 p4, v0

    const/4 v3, 0x0

    new-array v0, v3, [F

    move-object/from16 p5, v0

    :cond_1
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Landroid/graphics/Paint;->native_addLinearGradientTextEffect(JFF[I[F[FF)I

    move-result v3

    return v3

    :cond_2
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v3, v0

    if-eqz v3, :cond_0

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p3

    array-length v3, v0

    move-object/from16 v0, p4

    array-length v4, v0

    move-object/from16 v0, p5

    array-length v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    new-array v12, v14, [Landroid/graphics/Paint$Gradient;

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_3

    new-instance v2, Landroid/graphics/Paint$Gradient;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/Paint$Gradient;-><init>(Landroid/graphics/Paint$Gradient;)V

    aget v3, p3, v13

    iput v3, v2, Landroid/graphics/Paint$Gradient;->color:I

    aget v3, p4, v13

    iput v3, v2, Landroid/graphics/Paint$Gradient;->alpha:F

    aget v3, p5, v13

    iput v3, v2, Landroid/graphics/Paint$Gradient;->position:F

    aput-object v2, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/graphics/Paint$1;

    invoke-direct {v3, p0}, Landroid/graphics/Paint$1;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v12, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-array v0, v14, [I

    move-object/from16 p3, v0

    new-array v0, v14, [F

    move-object/from16 p4, v0

    new-array v0, v14, [F

    move-object/from16 p5, v0

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_1

    aget-object v3, v12, v13

    iget v3, v3, Landroid/graphics/Paint$Gradient;->color:I

    aput v3, p3, v13

    aget-object v3, v12, v13

    iget v3, v3, Landroid/graphics/Paint$Gradient;->alpha:F

    aput v3, p4, v13

    aget-object v3, v12, v13

    iget v3, v3, Landroid/graphics/Paint$Gradient;->position:F

    aput v3, p5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1
.end method

.method public semAddOuterGlowTextEffect(FIF)I
    .locals 7

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/Paint;->native_addOuterGlowTextEffect(JFIF)I

    move-result v0

    return v0
.end method

.method public semAddOuterShadowTextEffect(FFFIF)I
    .locals 9

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/graphics/Paint;->native_addOuterShadowTextEffect(JFFFIF)I

    move-result v0

    return v0
.end method

.method public semAddStrokeTextEffect(FIF)I
    .locals 7

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/Paint;->native_addStrokeTextEffect(JFIF)I

    move-result v0

    return v0
.end method

.method public semClearAllTextEffect()V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->native_clearAllTextEffect(J)V

    return-void
.end method

.method public semClearTextEffectOpacity()V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->native_clearTextEffectOpacity(J)V

    return-void
.end method

.method public semGetHighContrastTextStrokeWidth()F
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Paint;->getHCTStrokeWidth()F

    move-result v0

    return v0
.end method

.method public semGetTextEffectOffsetBottom()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->native_getTextEffectOffsetBottom(J)I

    move-result v0

    return v0
.end method

.method public semGetTextEffectOffsetLeft()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->native_getTextEffectOffsetLeft(J)I

    move-result v0

    return v0
.end method

.method public semGetTextEffectOffsetRight()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->native_getTextEffectOffsetRight(J)I

    move-result v0

    return v0
.end method

.method public semGetTextEffectOffsetTop()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->native_getTextEffectOffsetTop(J)I

    move-result v0

    return v0
.end method

.method public semHasTextEffect()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->native_hasTextEffect(J)Z

    move-result v0

    return v0
.end method

.method public semRemoveTextEffect(I)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->native_removeTextEffect(JI)V

    return-void
.end method

.method public semSetTextEffectOpacity(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->native_setTextEffectOpacity(JF)V

    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 6

    const-wide/16 v4, 0x0

    if-eq p0, p1, :cond_0

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSet(JJ)V

    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iget-boolean v0, v0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v0, v0, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_3

    :cond_2
    sget-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v0, :cond_5

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v0, v0, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    :cond_3
    :goto_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetTypeface(JJ)J

    return-void

    :cond_4
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iget-wide v0, v0, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    goto :goto_0

    :cond_5
    iput-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    goto :goto_1
.end method

.method public setARGB(IIII)V
    .locals 2

    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAlpha(JI)V

    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAntiAlias(JZ)V

    return-void
.end method

.method public setBidiFlags(I)V
    .locals 3

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return-void
.end method

.method public setColor(I)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetColor(JI)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 2

    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    div-float v0, v4, p1

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    goto :goto_0
.end method

.method public setDither(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetDither(JZ)V

    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetElegantTextHeight(JZ)V

    return-void
.end method

.method public setFakeBoldText(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFakeBoldText(JZ)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFilterBitmap(JZ)V

    return-void
.end method

.method public setFlags(I)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFlags(JI)V

    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    iput-object p1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFontFeatureSettings(JLjava/lang/String;)V

    return-void
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    if-eq v3, v5, :cond_0

    if-eqz v3, :cond_1

    iget-object v5, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return v9

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iput-object v7, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    iget-object v5, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return v9

    :cond_3
    iget-object v5, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-nez v5, :cond_5

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    invoke-static {v3}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v7, v0

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_6

    aget-object v1, v0, v5

    invoke-virtual {v1}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Typeface;->isSupportedAxes(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    return v6

    :cond_7
    iput-object v3, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return v9
.end method

.method public setHinting(I)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHinting(JI)V

    return-void
.end method

.method public setHyphenEdit(I)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHyphenEdit(JI)V

    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLetterSpacing(JF)V

    return-void
.end method

.method public setLinearText(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLinearText(JZ)V

    return-void
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/graphics/MaskFilter;->native_instance:J

    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetMaskFilter(JJ)J

    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object p1
.end method

.method public setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    iget-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetMyanmarEncoding(JI)V

    :cond_0
    return-void
.end method

.method public setMyanmarEncoding(Ljava/util/Locale;)V
    .locals 6

    const/4 v4, 0x1

    iget-boolean v3, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    sget-object v2, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-le v3, v4, :cond_1

    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v3, "ZG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    :cond_2
    iget-object v3, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v3, v2, :cond_3

    iput-object v2, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, v2, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v4, v5, v3}, Landroid/graphics/Paint;->nSetMyanmarEncoding(JI)V

    :cond_3
    return-void
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetPathEffect(JJ)J

    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 4

    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-eq v0, p1, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetShader(JJ)J

    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object p1
.end method

.method public setShadowLayer(FFFI)V
    .locals 6

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nSetShadowLayer(JFFFI)V

    return-void
.end method

.method public setStrikeThruText(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrikeThruText(JZ)V

    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeCap(JI)V

    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeJoin(JI)V

    return-void
.end method

.method public setStrokeMiter(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeMiter(JF)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeWidth(JF)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStyle(JI)V

    return-void
.end method

.method public setSubpixelText(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetSubpixelText(JZ)V

    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetTextAlign(JI)V

    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "locale cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v1, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ZG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    sget-object v2, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v1, v2, :cond_1

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    iget v1, v1, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v2, v3, v1}, Landroid/graphics/Paint;->nSetMyanmarEncoding(JI)V

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v1

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_2
    iget-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    sget-object v2, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v1, v2, :cond_1

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    iget v1, v1, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v2, v3, v1}, Landroid/graphics/Paint;->nSetMyanmarEncoding(JI)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/os/LocaleList;

    new-array v2, v5, [Ljava/util/Locale;

    aput-object p1, v2, v4

    invoke-direct {v1, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    return-void
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 4

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "locales cannot be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-boolean v1, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string/jumbo v1, "ZG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    sget-object v2, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v1, v2, :cond_4

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    iget v1, v1, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v2, v3, v1}, Landroid/graphics/Paint;->nSetMyanmarEncoding(JI)V

    :cond_4
    :goto_0
    iget-object v1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_5
    iget-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    sget-object v2, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v1, v2, :cond_4

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    iget v1, v1, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v2, v3, v1}, Landroid/graphics/Paint;->nSetMyanmarEncoding(JI)V

    goto :goto_0

    :cond_6
    iput-object p1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    return-void
.end method

.method public setTextScaleX(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextScaleX(JF)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSize(JF)V

    return-void
.end method

.method public setTextSkewX(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSkewX(JF)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    sget-boolean v2, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v0, v2, Landroid/graphics/Typeface;->native_instance:J

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v0, v2, Landroid/graphics/Typeface;->native_instance:J

    :cond_1
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetTypeface(JJ)J

    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    return-object p1

    :cond_2
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_0
.end method

.method public setUnderlineText(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetUnderlineText(JZ)V

    return-void
.end method

.method public setWordSpacing(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetWordSpacing(JF)V

    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 4

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/graphics/Xfermode;->porterDuffMode:I

    :goto_0
    iget-object v2, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iget v0, v2, Landroid/graphics/Xfermode;->porterDuffMode:I

    :goto_1
    if-eq v1, v0, :cond_0

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v1}, Landroid/graphics/Paint;->nSetXfermode(JI)V

    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object p1

    :cond_1
    sget v1, Landroid/graphics/Xfermode;->DEFAULT:I

    goto :goto_0

    :cond_2
    sget v0, Landroid/graphics/Xfermode;->DEFAULT:I

    goto :goto_1
.end method
