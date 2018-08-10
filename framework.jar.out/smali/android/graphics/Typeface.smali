.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Typeface$Builder;
    }
.end annotation


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field private static final DEBUG:Z = false

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final EMPTY_AXES:[I

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field private static FlipFontPath:Ljava/lang/String; = null

.field private static final FontsLikeDefault:[Ljava/lang/String;

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field private static final MONOSPACE_INDEX:I = 0x3

.field public static final NORMAL:I = 0x0

.field private static final OWNER_SANS_LOC_PATH:Ljava/lang/String; = "/data/app_fonts/0/sans.loc"

.field public static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field private static final SANS_INDEX:I = 0x1

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final SERIF_INDEX:I = 0x2

.field private static final STYLE_ITALIC:I = 0x1

.field private static final STYLE_NORMAL:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_MONOTYPE:Ljava/lang/String; = "Monotype"

.field private static final TYPEFACE_CACHE_SIZE:I = 0x3

.field private static final USER_SANS_LOC_POST:Ljava/lang/String; = "/sans.loc"

.field private static final USER_SANS_LOC_PRE:Ljava/lang/String; = "/data/app_fonts/"

.field private static boldTypeFaceTemp:Landroid/graphics/Typeface;

.field public static isFlipFontUsed:Z

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sDynamicTypefaceCache:Landroid/util/LruCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field private static final sLock:Ljava/lang/Object;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field

.field private static typeFaceTemp:Landroid/graphics/Typeface;


# instance fields
.field public isLikeDefault:Z

.field private mStyle:I

.field private mSupportedAxes:[I

.field private mWeight:I

.field public native_instance:J


# direct methods
.method static synthetic -get0(Landroid/graphics/Typeface;)I
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method static synthetic -get1(Landroid/graphics/Typeface;)I
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return v0
.end method

.method static synthetic -get2()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(JIZ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    const-string/jumbo v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sLock:Ljava/lang/Object;

    new-array v0, v4, [I

    sput-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    const-string/jumbo v0, ""

    sput-object v0, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    sput-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "sans-serif-thin"

    aput-object v2, v0, v4

    const-string/jumbo v2, "sans-serif-light"

    aput-object v2, v0, v6

    const-string/jumbo v2, "sans-serif"

    aput-object v2, v0, v7

    const-string/jumbo v2, "sans-serif-medium"

    aput-object v2, v0, v5

    const-string/jumbo v2, "sans-serif-black"

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-string/jumbo v2, "sec-roboto-light"

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string/jumbo v2, "roboto-num3L"

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-string/jumbo v2, "roboto-num3R"

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const-string/jumbo v2, "sec-roboto-condensed"

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const-string/jumbo v2, "sec-roboto-condensed-light"

    const/16 v3, 0x9

    aput-object v2, v0, v3

    sput-object v0, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v6

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    iput-boolean v0, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetWeight(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return-void
.end method

.method synthetic constructor <init>(JLandroid/graphics/Typeface;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/graphics/Typeface;-><init>(J)V

    return-void
.end method

.method public static SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/graphics/Typeface;->SetFlipFonts(Landroid/content/Context;)V

    return-void
.end method

.method private static SetFlipFonts(Landroid/content/Context;)V
    .locals 15

    const/4 v14, 0x2

    const-wide/16 v12, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-static {p0, v10}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    const-string/jumbo v5, "default"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sput-boolean v11, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    :goto_0
    sget-object v5, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_0
    sput-boolean v10, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "DroidSans-Bold.ttf"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "DroidSans.ttf"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    sput-object v3, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_2
    sget-object v5, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v12, v13, v11}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    :cond_3
    :goto_1
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v5, Landroid/graphics/Typeface;->mStyle:I

    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_4
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v12, v13, v10}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    :cond_5
    :goto_2
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v5, Landroid/graphics/Typeface;->mStyle:I

    const/16 v0, 0x2bc

    const/16 v2, 0x190

    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v11

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v2, v11}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v11

    sget-object v7, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v7, v7, v11

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v5, Landroid/graphics/Typeface;->mStyle:I

    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v10

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v0, v11}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v10

    sget-object v7, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v7, v7, v10

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v5, Landroid/graphics/Typeface;->mStyle:I

    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v14

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v2, v10}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v14

    sget-object v7, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v7, v7, v14

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v5, Landroid/graphics/Typeface;->mStyle:I

    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v7, 0x3

    aget-object v5, v5, v7

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v0, v10}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v7, 0x3

    aget-object v5, v5, v7

    sget-object v7, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v5, Landroid/graphics/Typeface;->mStyle:I

    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v5, :cond_6

    sget-object v5, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    :cond_6
    sput-object v6, Landroid/graphics/Typeface;->typeFaceTemp:Landroid/graphics/Typeface;

    sput-object v6, Landroid/graphics/Typeface;->boldTypeFaceTemp:Landroid/graphics/Typeface;

    return-void

    :cond_7
    :try_start_0
    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/Typeface;->typeFaceTemp:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->typeFaceTemp:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v5, v8, v12

    if-nez v5, :cond_3

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/Typeface;->typeFaceTemp:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->typeFaceTemp:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    goto/16 :goto_1

    :catch_0
    move-exception v1

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/Typeface;->typeFaceTemp:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->typeFaceTemp:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_3

    :cond_8
    :try_start_1
    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/Typeface;->boldTypeFaceTemp:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->boldTypeFaceTemp:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v5, v8, v12

    if-nez v5, :cond_5

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/Typeface;->boldTypeFaceTemp:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->boldTypeFaceTemp:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    goto/16 :goto_2

    :catch_1
    move-exception v1

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/Typeface;->boldTypeFaceTemp:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->boldTypeFaceTemp:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_4
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 9

    if-ltz p1, :cond_0

    const/4 v6, 0x3

    if-le p1, v6, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    const-wide/16 v2, 0x0

    if-eqz p0, :cond_3

    iget v6, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v6, p1, :cond_2

    return-object p0

    :cond_2
    sget-boolean v6, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v6, :cond_4

    const-wide/16 v2, 0x0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v6, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    if-eqz v5, :cond_5

    return-object v5

    :cond_4
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "Typeface.create"

    const-string/jumbo v7, "ArrayIndexOutOfBoundsException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "Typeface.create"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "family : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "Typeface.create"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "style : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "Typeface.create"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ni : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "Typeface.create"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sTypefaceCache size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_5
    new-instance v5, Landroid/graphics/Typeface;

    invoke-static {v2, v3, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Landroid/graphics/Typeface;-><init>(J)V

    if-eqz v5, :cond_6

    if-eqz p0, :cond_6

    iget-boolean v6, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    iput-boolean v6, v5, Landroid/graphics/Typeface;->isLikeDefault:Z

    :cond_6
    if-nez v4, :cond_7

    new-instance v4, Landroid/util/SparseArray;

    const/4 v6, 0x4

    invoke-direct {v4, v6}, Landroid/util/SparseArray;-><init>(I)V

    if-nez v0, :cond_7

    sget-object v6, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_7
    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v5
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 13

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v1, :cond_4

    sget-object v12, Landroid/graphics/Typeface;->sLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    new-instance v1, Landroid/graphics/Typeface$Builder;

    invoke-direct {v1, p0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    if-eqz v11, :cond_1

    monitor-exit v12

    return-object v11

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    :try_start_1
    invoke-static/range {v0 .. v5}, Landroid/graphics/Typeface$Builder;->-wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v10

    sget-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, v10}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Typeface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_2

    monitor-exit v12

    return-object v11

    :cond_2
    :try_start_2
    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/FontFamily;->allowUnsupportedFont()V

    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    const/4 v1, 0x1

    new-array v9, v1, [Landroid/graphics/FontFamily;

    const/4 v1, 0x0

    aput-object v0, v9, v1

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-static {v9, v1, v2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v11

    sget-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, v10, v11}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v12

    return-object v11

    :cond_3
    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v12

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Font asset not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1
.end method

.method private static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6

    const/4 v4, -0x1

    array-length v2, p0

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1, v4, v4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method private static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .locals 6

    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1, p1, p2}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    sget-object v1, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/FontFamily;->allowUnsupportedFont()V

    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    const/4 v1, 0x1

    new-array v6, v1, [Landroid/graphics/FontFamily;

    aput-object v0, v6, v2

    invoke-static {v6, v4, v4}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Font not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createFromResources(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 13

    sget-object v1, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v1, :cond_3

    sget-object v12, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/graphics/Typeface$Builder;->-wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v10

    sget-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, v10}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_0

    monitor-exit v12

    return-object v11

    :cond_0
    :try_start_1
    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    monitor-exit v12

    return-object v1

    :cond_1
    const/4 v1, 0x1

    :try_start_2
    new-array v9, v1, [Landroid/graphics/FontFamily;

    const/4 v1, 0x0

    aput-object v0, v9, v1

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-static {v9, v1, v2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v11

    sget-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, v10, v11}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v12

    return-object v11

    :cond_2
    monitor-exit v12

    :cond_3
    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1
.end method

.method public static createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 27

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    if-eqz v3, :cond_3

    move-object/from16 v21, p0

    check-cast v21, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getCerts()Ljava/util/List;

    move-result-object v17

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-eqz v17, :cond_1

    const/16 v18, 0x0

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_1
    new-instance v22, Landroid/provider/FontRequest;

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4, v5, v13}, Landroid/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static/range {v22 .. v22}, Landroid/provider/FontsContract;->getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;

    move-result-object v23

    if-nez v23, :cond_2

    sget-object v23, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_2
    return-object v23

    :cond_3
    invoke-static/range {p1 .. p2}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v23

    if-eqz v23, :cond_4

    return-object v23

    :cond_4
    move-object/from16 v15, p0

    check-cast v15, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    new-instance v2, Landroid/graphics/FontFamily;

    invoke-direct {v2}, Landroid/graphics/FontFamily;-><init>()V

    invoke-virtual {v15}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v25

    const/4 v3, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v24, v3

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    aget-object v16, v25, v24

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    return-object v3

    :cond_5
    add-int/lit8 v3, v24, 0x1

    move/from16 v24, v3

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    return-object v3

    :cond_7
    const/4 v3, 0x1

    new-array v14, v3, [Landroid/graphics/FontFamily;

    const/4 v3, 0x0

    aput-object v2, v14, v3

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v14, v3, v4}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v23

    sget-object v9, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    :try_start_0
    invoke-static/range {v3 .. v8}, Landroid/graphics/Typeface$Builder;->-wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v20

    sget-object v3, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v23

    :catchall_0
    move-exception v3

    monitor-exit v9

    throw v3

    :cond_8
    const/4 v3, 0x0

    return-object v3
.end method

.method public static createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_0
.end method

.method private static createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 10

    const/4 v9, 0x0

    sget-object v8, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/graphics/Typeface$Builder;->-wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    monitor-exit v8

    return-object v7

    :cond_0
    monitor-exit v8

    return-object v9

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string/jumbo v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "default"

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    const/4 v2, 0x1

    aget-object v2, v0, v2

    return-object v2
.end method

.method private static getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method private static getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 12

    const-string/jumbo v9, "default"

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-nez v9, :cond_4

    const-string/jumbo v10, "default"

    return-object v10

    :pswitch_1
    const-string/jumbo v7, ""

    const-string/jumbo v7, "/data/app_fonts/0/sans.loc"

    const-string/jumbo v10, "persist.sys.flipfontpath"

    const-string/jumbo v11, "empty"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_1
    move-object v0, v1

    move-object v5, v6

    :cond_2
    :goto_2
    move-object v9, v8

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_3
    :try_start_4
    const-string/jumbo v8, "default"

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v2

    :goto_4
    :try_start_6
    const-string/jumbo v8, "default"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_2

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v5, :cond_3

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_3
    :goto_6
    throw v10

    :catch_5
    move-exception v3

    goto :goto_6

    :cond_4
    return-object v9

    :catchall_1
    move-exception v10

    move-object v5, v6

    goto :goto_5

    :catchall_2
    move-exception v10

    move-object v0, v1

    move-object v5, v6

    goto :goto_5

    :catch_6
    move-exception v2

    move-object v5, v6

    goto :goto_4

    :catch_7
    move-exception v2

    move-object v0, v1

    move-object v5, v6

    goto :goto_4

    :catch_8
    move-exception v3

    move-object v5, v6

    goto :goto_3

    :catch_9
    move-exception v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 5

    const-string/jumbo v2, "persist.sys.omc_etcpath"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/system/etc/"

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/fonts.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    :cond_0
    const-string/jumbo v2, "Monotype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fonts.xml take from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private static init()V
    .locals 32

    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v22

    new-instance v7, Ljava/io/File;

    const-string/jumbo v26, "fonts.xml"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static/range {v18 .. v18}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/text/FontConfig;

    move-result-object v16

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v26

    aget-object v12, v26, v19

    if-eqz v19, :cond_0

    invoke-virtual {v12}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_1

    :cond_0
    invoke-static {v12, v6}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/text/FontConfig$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Landroid/graphics/FontFamily;

    sput-object v26, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    sget-object v26, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v26 .. v26}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    const/16 v19, 0x0

    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v26

    aget-object v12, v26, v19

    invoke-virtual {v12}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_4

    if-nez v19, :cond_5

    sget-object v24, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    :goto_2
    const/16 v20, 0x0

    :goto_3
    sget-object v26, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    invoke-virtual {v12}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v26

    sget-object v27, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v27, v27, v20

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Landroid/graphics/Typeface;->isLikeDefault:Z

    :cond_3
    invoke-virtual {v12}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v12, v6}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/text/FontConfig$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    move-result-object v17

    if-eqz v17, :cond_4

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v13, v0, [Landroid/graphics/FontFamily;

    const/16 v26, 0x0

    aput-object v17, v13, v26

    const/16 v26, -0x1

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v13, v0, v1}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v24

    goto :goto_2

    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getAliases()[Landroid/text/FontConfig$Alias;

    move-result-object v27

    const/16 v26, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    aget-object v4, v27, v26

    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getToName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    move-object/from16 v21, v5

    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v25

    const/16 v29, 0x190

    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    new-instance v21, Landroid/graphics/Typeface;

    iget-wide v0, v5, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v30

    move-object/from16 v0, v21

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    const/16 v20, 0x0

    :goto_5
    sget-object v29, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getToName()Ljava/lang/String;

    move-result-object v29

    sget-object v30, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v30, v30, v20

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/graphics/Typeface;->isLikeDefault:Z

    :cond_8
    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    :cond_a
    sput-object v23, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v11

    sget-object v26, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "XML parse exception for "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_1
    move-exception v9

    sget-object v26, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Error reading "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    move-exception v8

    sget-object v26, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Error opening "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_3
    move-exception v10

    sget-object v26, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v27, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method private static makeFamilyFromParsed(Landroid/text/FontConfig$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$Family;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/FontFamily;"
        }
    .end annotation

    new-instance v8, Landroid/graphics/FontFamily;

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getVariant()I

    move-result v4

    invoke-direct {v8, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v20

    const/4 v3, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v19, v3

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    aget-object v17, v20, v19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/system/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    if-nez v9, :cond_5

    const/4 v10, 0x0

    const/4 v15, 0x0

    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v16, :cond_0

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v10, :cond_5

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v14

    move-object/from16 v15, v16

    :goto_2
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error mapping font file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v3

    goto :goto_0

    :catch_1
    move-exception v10

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_4
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    :goto_5
    if-eqz v15, :cond_2

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_6
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    :catch_3
    move-exception v14

    goto :goto_2

    :catch_4
    move-exception v5

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_6

    :cond_3
    if-eq v4, v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getWeight()I

    move-result v12

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->isItalic()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v13, 0x1

    :goto_7
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error creating font "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to load Family: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_8
    return-object v8

    :catchall_1
    move-exception v3

    move-object v4, v10

    goto/16 :goto_5

    :catchall_2
    move-exception v3

    move-object/from16 v15, v16

    move-object v4, v10

    goto/16 :goto_5

    :catch_5
    move-exception v3

    move-object/from16 v15, v16

    goto/16 :goto_4
.end method

.method private static native nativeCreateFromArray([JII)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateFromTypefaceWithExactStyle(JIZ)J
.end method

.method private static native nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeGetSupportedAxes(J)[I
.end method

.method private static native nativeGetWeight(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method public static semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static semIsDefaultFontStyle()Z
    .locals 1

    sget-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2

    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/graphics/Typeface;

    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    const/16 v0, 0x11

    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    return v0
.end method

.method public final isBold()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isItalic()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSupportedAxes(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v1, :cond_0

    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->nativeGetSupportedAxes(J)[I

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    iget-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    iput-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
