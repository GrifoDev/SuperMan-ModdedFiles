.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field private static final DEBUG:Z = false

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field private static FlipFontPath:Ljava/lang/String; = null

.field private static final FontsLikeDefault:[Ljava/lang/String;

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field private static final MONOSPACE_INDEX:I = 0x3

.field public static final NORMAL:I = 0x0

.field private static final OWNER_SANS_LOC_PATH:Ljava/lang/String; = "/data/app_fonts/0/sans.loc"

.field private static final SANS_INDEX:I = 0x1

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final SERIF_INDEX:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_MONOTYPE:Ljava/lang/String; = "Monotype"

.field private static final USER_SANS_LOC_POST:Ljava/lang/String; = "/sans.loc"

.field private static final USER_SANS_LOC_PRE:Ljava/lang/String; = "/data/app_fonts/"

.field private static boldTypeFaceTemp:Landroid/graphics/Typeface;

.field public static isFlipFontUsed:Z

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sDynamicTypefaceCache:Landroid/util/LruCache;
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

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 57
    const-string/jumbo v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 81
    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 87
    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    .line 113
    const-string/jumbo v0, ""

    sput-object v0, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 129
    sput-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 138
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 139
    const-string/jumbo v2, "sans-serif-thin"

    aput-object v2, v0, v4

    .line 140
    const-string/jumbo v2, "sans-serif-light"

    aput-object v2, v0, v6

    .line 141
    const-string/jumbo v2, "sans-serif"

    aput-object v2, v0, v7

    .line 142
    const-string/jumbo v2, "sans-serif-medium"

    aput-object v2, v0, v5

    .line 143
    const-string/jumbo v2, "sans-serif-black"

    const/4 v3, 0x4

    aput-object v2, v0, v3

    .line 144
    const-string/jumbo v2, "sec-roboto-light"

    const/4 v3, 0x5

    aput-object v2, v0, v3

    .line 145
    const-string/jumbo v2, "roboto-num3L"

    const/4 v3, 0x6

    aput-object v2, v0, v3

    .line 146
    const-string/jumbo v2, "roboto-num3R"

    const/4 v3, 0x7

    aput-object v2, v0, v3

    .line 147
    const-string/jumbo v2, "sec-roboto-condensed"

    const/16 v3, 0x8

    aput-object v2, v0, v3

    .line 148
    const-string/jumbo v2, "sec-roboto-condensed-light"

    const/16 v3, 0x9

    aput-object v2, v0, v3

    .line 138
    sput-object v0, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    .line 485
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    .line 487
    nop

    nop

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 488
    nop

    nop

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 489
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 490
    const-string/jumbo v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 491
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 493
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    .line 494
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    .line 495
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v6

    move-object v0, v1

    .line 496
    nop

    nop

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    .line 497
    nop

    nop

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    .line 493
    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 55
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .prologue
    const/4 v0, 0x0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 136
    iput-boolean v0, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 367
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 372
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 366
    return-void
.end method

.method public static SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sAppName"    # Ljava/lang/String;

    .prologue
    .line 922
    invoke-static {p0}, Landroid/graphics/Typeface;->SetFlipFonts(Landroid/content/Context;)V

    .line 917
    return-void
.end method

.method private static SetFlipFonts(Landroid/content/Context;)V
    .locals 14
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 791
    invoke-static {p0, v10}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, "strFontPath":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 795
    .local v2, "strFontPathBold":Ljava/lang/String;
    const-string/jumbo v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 799
    sput-boolean v11, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 811
    :goto_0
    sget-object v3, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 813
    return-void

    .line 802
    :cond_0
    sput-boolean v10, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "DroidSans-Bold.ttf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "DroidSans.ttf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 815
    :cond_1
    sput-object v1, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 829
    sget-boolean v3, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 830
    :cond_2
    sget-object v3, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v6, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 831
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v11}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    iput-wide v6, v3, Landroid/graphics/Typeface;->native_instance:J

    .line 849
    :cond_3
    :goto_1
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v5

    iput v5, v3, Landroid/graphics/Typeface;->mStyle:I

    .line 855
    sget-boolean v3, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 856
    :cond_4
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v10}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    .line 874
    :cond_5
    :goto_2
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    .line 880
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v11

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v11}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    .line 881
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v11

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v11

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    .line 886
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v10

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v10}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    .line 887
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v10

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v10

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    .line 892
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v12

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v12}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    .line 893
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v12

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v12

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    .line 898
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v13

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v13}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    .line 899
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v13

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v13

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    .line 902
    sget-boolean v3, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v3, :cond_6

    .line 903
    sget-object v3, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 788
    :cond_6
    return-void

    .line 834
    :cond_7
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->typeFaceTemp:Landroid/graphics/Typeface;

    .line 835
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->typeFaceTemp:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v6, v3, Landroid/graphics/Typeface;->native_instance:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :goto_3
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v6, v3, Landroid/graphics/Typeface;->native_instance:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    move-object v3, v4

    .line 844
    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->typeFaceTemp:Landroid/graphics/Typeface;

    .line 845
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->typeFaceTemp:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v6, v3, Landroid/graphics/Typeface;->native_instance:J

    goto/16 :goto_1

    .line 837
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v3, v4

    .line 838
    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->typeFaceTemp:Landroid/graphics/Typeface;

    .line 839
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->typeFaceTemp:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v6, v3, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_3

    .line 859
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_8
    :try_start_1
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->boldTypeFaceTemp:Landroid/graphics/Typeface;

    .line 860
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->boldTypeFaceTemp:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v6, v3, Landroid/graphics/Typeface;->native_instance:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 868
    :goto_4
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v6, v3, Landroid/graphics/Typeface;->native_instance:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_5

    .line 869
    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->boldTypeFaceTemp:Landroid/graphics/Typeface;

    .line 870
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->boldTypeFaceTemp:Landroid/graphics/Typeface;

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    goto/16 :goto_2

    .line 862
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/RuntimeException;
    move-object v3, v4

    .line 863
    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->boldTypeFaceTemp:Landroid/graphics/Typeface;

    .line 864
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->boldTypeFaceTemp:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v6, v3, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_4
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 202
    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-le p1, v4, :cond_1

    .line 203
    :cond_0
    const/4 p1, 0x0

    .line 205
    :cond_1
    const-wide/16 v0, 0x0

    .line 206
    .local v0, "ni":J
    if-eqz p0, :cond_3

    .line 208
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_2

    .line 209
    return-object p0

    .line 212
    :cond_2
    sget-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v4, :cond_4

    .line 213
    const-wide/16 v0, 0x0

    .line 220
    :cond_3
    :goto_0
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 222
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_5

    .line 223
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 224
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_5

    .line 225
    return-object v3

    .line 215
    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_0

    .line 229
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    :cond_5
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 233
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_6

    if-eqz p0, :cond_6

    .line 234
    iget-boolean v4, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    iput-boolean v4, v3, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 238
    :cond_6
    if-nez v2, :cond_7

    .line 239
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 240
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 242
    :cond_7
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    return-object v3
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    const/4 v1, 0x0

    .line 184
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    return-object v1
.end method

.method private static createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v2

    .line 296
    .local v2, "pkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 298
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 299
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string/jumbo v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 269
    sget-object v4, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v4, :cond_2

    .line 270
    sget-object v5, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v5

    .line 271
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_0

    monitor-exit v5

    return-object v3

    .line 275
    :cond_0
    :try_start_1
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 276
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    const/4 v4, 0x1

    new-array v0, v4, [Landroid/graphics/FontFamily;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 278
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 279
    sget-object v4, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v4, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 280
    return-object v3

    .end local v0    # "families":[Landroid/graphics/FontFamily;
    :cond_1
    monitor-exit v5

    .line 284
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Font asset not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 270
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 340
    array-length v2, p0

    new-array v1, v2, [J

    .line 341
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 342
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 355
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .line 356
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 357
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 360
    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 362
    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 323
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 324
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 325
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, v3}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    aput-object v1, v0, v3

    .line 327
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 330
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Font not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 255
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    .line 256
    :cond_0
    const/4 p0, 0x0

    .line 258
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .prologue
    .line 576
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "sx":Ljava/lang/String;
    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 583
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string/jumbo v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    const-string/jumbo v2, "default"

    return-object v2

    .line 586
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 588
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v0, v2

    return-object v2
.end method

.method private static getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .prologue
    .line 598
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "sx":Ljava/lang/String;
    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method private static getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .prologue
    .line 613
    const-string/jumbo v9, "default"

    .line 615
    .local v9, "systemFont":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 781
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v9, :cond_4

    .line 782
    const-string/jumbo v10, "default"

    return-object v10

    .line 618
    :pswitch_1
    const-string/jumbo v7, ""

    .line 637
    .local v7, "sans_path":Ljava/lang/String;
    const-string/jumbo v7, "/data/app_fonts/0/sans.loc"

    .line 640
    const-string/jumbo v10, "persist.sys.flipfontpath"

    const-string/jumbo v11, "empty"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 644
    const-string/jumbo v10, "empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 646
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 648
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 649
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 650
    .local v8, "string":Ljava/lang/String;
    const/4 v0, 0x0

    .line 653
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 655
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v0    # "br":Ljava/io/BufferedReader;
    move-result-object v8

    .line 658
    .local v8, "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 659
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 668
    if-eqz v6, :cond_1

    .line 669
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_1
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 675
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    move-object v9, v8

    goto :goto_0

    .line 671
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_1

    .line 663
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .local v8, "string":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 664
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "string":Ljava/lang/String;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string/jumbo v8, "default"

    .line 665
    .local v8, "string":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 668
    if-eqz v5, :cond_2

    .line 669
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 671
    :catch_2
    move-exception v3

    goto :goto_2

    .line 661
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .local v8, "string":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 662
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "string":Ljava/lang/String;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    const-string/jumbo v8, "default"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 668
    .local v8, "string":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 669
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 671
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 666
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "string":Ljava/lang/String;
    :catchall_0
    move-exception v10

    .line 668
    :goto_5
    if-eqz v5, :cond_3

    .line 669
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 666
    :cond_3
    :goto_6
    throw v10

    .line 671
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 784
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "sans_path":Ljava/lang/String;
    :cond_4
    return-object v9

    .line 666
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "sans_path":Ljava/lang/String;
    .local v8, "string":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "string":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 661
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "string":Ljava/lang/String;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "string":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 663
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "string":Ljava/lang/String;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "string":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 503
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static init()V
    .locals 29

    .prologue
    .line 406
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v22

    .line 407
    .local v22, "systemFontConfigLocation":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string/jumbo v26, "fonts.xml"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 409
    .local v8, "configFilename":Ljava/io/File;
    :try_start_0
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 410
    .local v18, "fontsIn":Ljava/io/FileInputStream;
    invoke-static/range {v18 .. v18}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    move-result-object v16

    .line 412
    .local v16, "fontConfig":Landroid/graphics/FontListParser$Config;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 414
    .local v7, "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v15, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    .line 418
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/FontListParser$Family;

    .line 419
    .local v13, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v19, :cond_0

    iget-object v0, v13, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 420
    :cond_0
    invoke-static {v13, v7}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 423
    .end local v13    # "f":Landroid/graphics/FontListParser$Family;
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

    .line 424
    sget-object v26, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v26 .. v26}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 426
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v23, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 429
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/FontListParser$Family;

    .line 430
    .restart local v13    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v13, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 431
    if-nez v19, :cond_5

    .line 434
    sget-object v24, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 442
    .local v24, "typeface":Landroid/graphics/Typeface;
    :goto_2
    const/16 v20, 0x0

    .local v20, "ix":I
    :goto_3
    sget-object v26, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 443
    iget-object v0, v13, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    sget-object v27, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v27, v27, v20

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 444
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 449
    :cond_3
    iget-object v0, v13, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .end local v20    # "ix":I
    .end local v24    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 436
    :cond_5
    invoke-static {v13, v7}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    move-result-object v17

    .line 437
    .local v17, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v14, v0, [Landroid/graphics/FontFamily;

    const/16 v26, 0x0

    aput-object v17, v14, v26

    .line 438
    .local v14, "families":[Landroid/graphics/FontFamily;
    invoke-static {v14}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v24

    .restart local v24    # "typeface":Landroid/graphics/Typeface;
    goto :goto_2

    .line 442
    .end local v14    # "families":[Landroid/graphics/FontFamily;
    .end local v17    # "fontFamily":Landroid/graphics/FontFamily;
    .restart local v20    # "ix":I
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 452
    .end local v13    # "f":Landroid/graphics/FontListParser$Family;
    .end local v20    # "ix":I
    .end local v24    # "typeface":Landroid/graphics/Typeface;
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "alias$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .line 453
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    .line 454
    .local v6, "base":Landroid/graphics/Typeface;
    move-object/from16 v21, v6

    .line 455
    .local v21, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    move/from16 v25, v0

    .line 456
    .local v25, "weight":I
    const/16 v26, 0x190

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 457
    new-instance v21, Landroid/graphics/Typeface;

    .end local v21    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v6, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v26

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 460
    .restart local v21    # "newFace":Landroid/graphics/Typeface;
    const/16 v20, 0x0

    .restart local v20    # "ix":I
    :goto_5
    sget-object v26, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 461
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    sget-object v27, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v27, v27, v20

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 462
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 468
    .end local v20    # "ix":I
    :cond_8
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_4

    .line 472
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v6    # "base":Landroid/graphics/Typeface;
    .end local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v18    # "fontsIn":Ljava/io/FileInputStream;
    .end local v19    # "i":I
    .end local v21    # "newFace":Landroid/graphics/Typeface;
    .end local v23    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v25    # "weight":I
    :catch_0
    move-exception v11

    .line 473
    .local v11, "e":Ljava/lang/RuntimeException;
    sget-object v26, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v27, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :goto_6
    return-void

    .line 460
    .restart local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .restart local v5    # "alias$iterator":Ljava/util/Iterator;
    .restart local v6    # "base":Landroid/graphics/Typeface;
    .restart local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .restart local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v18    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v19    # "i":I
    .restart local v20    # "ix":I
    .restart local v21    # "newFace":Landroid/graphics/Typeface;
    .restart local v23    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .restart local v25    # "weight":I
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 470
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v6    # "base":Landroid/graphics/Typeface;
    .end local v20    # "ix":I
    .end local v21    # "newFace":Landroid/graphics/Typeface;
    .end local v25    # "weight":I
    :cond_a
    :try_start_1
    sput-object v23, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    .line 475
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v18    # "fontsIn":Ljava/io/FileInputStream;
    .end local v19    # "i":I
    .end local v23    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v9

    .line 476
    .local v9, "e":Ljava/io/FileNotFoundException;
    sget-object v26, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Error opening "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 479
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v12

    .line 480
    .local v12, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v26, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "XML parse exception for "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 477
    .end local v12    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v10

    .line 478
    .local v10, "e":Ljava/io/IOException;
    sget-object v26, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Error reading "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;
    .locals 20
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/FontListParser$Family;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/FontFamily;"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v8, Landroid/graphics/FontFamily;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v8, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .local v8, "fontFamily":Landroid/graphics/FontFamily;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "font$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/FontListParser$Font;

    .line 379
    .local v17, "font":Landroid/graphics/FontListParser$Font;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 380
    .local v9, "fontBuffer":Ljava/nio/ByteBuffer;
    if-nez v9, :cond_5

    .line 381
    const/4 v10, 0x0

    const/4 v15, 0x0

    .local v15, "file":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 382
    .end local v15    # "file":Ljava/io/FileInputStream;
    .local v16, "file":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 383
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 384
    .local v6, "fontSize":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    .line 385
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 389
    if-eqz v16, :cond_1

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    if-eqz v10, :cond_5

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 386
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v15, v16

    .line 387
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v16    # "file":Ljava/io/FileInputStream;
    :goto_2
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error mapping font file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "fontSize":J
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .end local v15    # "file":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_4
    if-eqz v15, :cond_2

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_5
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    .line 386
    :catch_3
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 389
    .end local v14    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_5

    :cond_3
    if-eq v4, v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 391
    :cond_5
    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/FontListParser$Font;->ttcIndex:I

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/graphics/FontListParser$Font;->axes:Ljava/util/List;

    .line 392
    move-object/from16 v0, v17

    iget v12, v0, Landroid/graphics/FontListParser$Font;->weight:I

    move-object/from16 v0, v17

    iget-boolean v13, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    .line 391
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/nio/ByteBuffer;ILjava/util/List;IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error creating font "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/FontListParser$Font;->ttcIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 396
    .end local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "font":Landroid/graphics/FontListParser$Font;
    :cond_6
    return-object v8

    .line 389
    .restart local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    .restart local v17    # "font":Landroid/graphics/FontListParser$Font;
    :catchall_1
    move-exception v3

    move-object v4, v10

    goto :goto_4

    .end local v15    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    move-object v4, v10

    move-object/from16 v15, v16

    .end local v16    # "file":Ljava/io/FileInputStream;
    .local v15, "file":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v15    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method public static semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .prologue
    .line 554
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static semIsDefaultFontStyle()Z
    .locals 1

    .prologue
    .line 565
    sget-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 153
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 154
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 152
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 518
    if-ne p0, p1, :cond_0

    return v1

    .line 519
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

    .line 521
    check-cast v0, Landroid/graphics/Typeface;

    .line 523
    .local v0, "typeface":Landroid/graphics/Typeface;
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

    .prologue
    .line 509
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 510
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 507
    return-void

    .line 511
    :catchall_0
    move-exception v0

    .line 512
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 511
    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 533
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 534
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 535
    return v0
.end method

.method public final isBold()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 164
    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isItalic()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 169
    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
