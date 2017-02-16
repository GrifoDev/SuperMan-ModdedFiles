.class public final Ljava/util/Locale;
.super Ljava/lang/Object;
.source "Locale.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Locale$Builder;,
        Ljava/util/Locale$Cache;,
        Ljava/util/Locale$Category;,
        Ljava/util/Locale$LocaleKey;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -java-util-Locale$CategorySwitchesValues:[I = null

.field public static final CANADA:Ljava/util/Locale;

.field public static final CANADA_FRENCH:Ljava/util/Locale;

.field public static final CHINA:Ljava/util/Locale;

.field public static final CHINESE:Ljava/util/Locale;

.field private static final DISPLAY_COUNTRY:I = 0x1

.field private static final DISPLAY_LANGUAGE:I = 0x0

.field private static final DISPLAY_SCRIPT:I = 0x3

.field private static final DISPLAY_VARIANT:I = 0x2

.field public static final ENGLISH:Ljava/util/Locale;

.field public static final FRANCE:Ljava/util/Locale;

.field public static final FRENCH:Ljava/util/Locale;

.field public static final GERMAN:Ljava/util/Locale;

.field public static final GERMANY:Ljava/util/Locale;

.field public static final ITALIAN:Ljava/util/Locale;

.field public static final ITALY:Ljava/util/Locale;

.field public static final JAPAN:Ljava/util/Locale;

.field public static final JAPANESE:Ljava/util/Locale;

.field public static final KOREA:Ljava/util/Locale;

.field public static final KOREAN:Ljava/util/Locale;

.field private static final LOCALECACHE:Ljava/util/Locale$Cache;

.field public static final PRC:Ljava/util/Locale;

.field public static final PRIVATE_USE_EXTENSION:C = 'x'

.field public static final ROOT:Ljava/util/Locale;

.field public static final SIMPLIFIED_CHINESE:Ljava/util/Locale;

.field public static final TAIWAN:Ljava/util/Locale;

.field public static final TRADITIONAL_CHINESE:Ljava/util/Locale;

.field public static final UK:Ljava/util/Locale;

.field private static final UNDETERMINED_LANGUAGE:Ljava/lang/String; = "und"

.field public static final UNICODE_LOCALE_EXTENSION:C = 'u'

.field public static final US:Ljava/util/Locale;

.field private static defaultDisplayLocale:Ljava/util/Locale; = null

.field private static defaultFormatLocale:Ljava/util/Locale; = null

.field private static defaultLocale:Ljava/util/Locale; = null

.field private static volatile isoCountries:[Ljava/lang/String; = null

.field private static volatile isoLanguages:[Ljava/lang/String; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x7ef811609c30f9ecL


# instance fields
.field private transient baseLocale:Lsun/util/locale/BaseLocale;

.field private volatile transient hashCodeValue:I

.field private transient localeExtensions:Lsun/util/locale/LocaleExtensions;


# direct methods
.method static synthetic -get0(Ljava/util/Locale;)Lsun/util/locale/BaseLocale;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/Locale;)Lsun/util/locale/LocaleExtensions;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    return-object v0
.end method

.method private static synthetic -getjava-util-Locale$CategorySwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/util/Locale;->-java-util-Locale$CategorySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->-java-util-Locale$CategorySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale$Category;->values()[Ljava/util/Locale$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-virtual {v1}, Ljava/util/Locale$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-virtual {v1}, Ljava/util/Locale$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Ljava/util/Locale;->-java-util-Locale$CategorySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    const-class v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ljava/util/Locale;->-assertionsDisabled:Z

    .line 485
    new-instance v0, Ljava/util/Locale$Cache;

    invoke-direct {v0, v6}, Ljava/util/Locale$Cache;-><init>(Ljava/util/Locale$Cache;)V

    sput-object v0, Ljava/util/Locale;->LOCALECACHE:Ljava/util/Locale$Cache;

    .line 489
    const-string/jumbo v0, "en"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 493
    const-string/jumbo v0, "fr"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    .line 497
    const-string/jumbo v0, "de"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    .line 501
    const-string/jumbo v0, "it"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    .line 505
    const-string/jumbo v0, "ja"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 509
    const-string/jumbo v0, "ko"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 513
    const-string/jumbo v0, "zh"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 517
    const-string/jumbo v0, "zh"

    const-string/jumbo v3, "CN"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 521
    const-string/jumbo v0, "zh"

    const-string/jumbo v3, "TW"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 525
    const-string/jumbo v0, "fr"

    const-string/jumbo v3, "FR"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    .line 529
    const-string/jumbo v0, "de"

    const-string/jumbo v3, "DE"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    .line 533
    const-string/jumbo v0, "it"

    const-string/jumbo v3, "IT"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    .line 537
    const-string/jumbo v0, "ja"

    const-string/jumbo v3, "JP"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    .line 541
    const-string/jumbo v0, "ko"

    const-string/jumbo v3, "KR"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    .line 545
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 549
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    .line 553
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 557
    const-string/jumbo v0, "en"

    const-string/jumbo v3, "GB"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 561
    const-string/jumbo v0, "en"

    const-string/jumbo v3, "US"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 565
    const-string/jumbo v0, "en"

    const-string/jumbo v3, "CA"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    .line 569
    const-string/jumbo v0, "fr"

    const-string/jumbo v3, "CA"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    .line 584
    const-string/jumbo v0, ""

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2031
    sput-object v6, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    .line 2032
    sput-object v6, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    .line 2033
    sput-object v6, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    .line 2118
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 2119
    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "language"

    const-class v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v0, v1

    .line 2120
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "country"

    const-class v4, Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v2

    .line 2121
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "variant"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2122
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "hashcode"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2123
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "script"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2124
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "extensions"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2118
    sput-object v0, Ljava/util/Locale;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 2192
    sput-object v6, Ljava/util/Locale;->isoLanguages:[Ljava/lang/String;

    .line 2194
    sput-object v6, Ljava/util/Locale;->isoCountries:[Ljava/lang/String;

    .line 483
    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 705
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 681
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2029
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 651
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 651
    :cond_1
    if-eqz p3, :cond_0

    .line 654
    invoke-static {p1}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 655
    const-string/jumbo v0, ""

    invoke-static {p1, v0, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 650
    return-void
.end method

.method private constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V
    .locals 1
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2029
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 620
    iput-object p1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 621
    iput-object p2, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 619
    return-void
.end method

.method synthetic constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale;)V
    .locals 0
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/Locale;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V

    return-void
.end method

.method public static adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 2237
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2240
    .local v0, "adjusted":Ljava/lang/String;
    const-string/jumbo v1, "he"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2241
    const-string/jumbo v0, "iw"

    .line 2248
    :cond_0
    :goto_0
    return-object v0

    .line 2242
    :cond_1
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2243
    const-string/jumbo v0, "in"

    goto :goto_0

    .line 2244
    :cond_2
    const-string/jumbo v1, "yi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2245
    const-string/jumbo v0, "ji"

    goto :goto_0
.end method

.method private static composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "format"    # Ljava/text/MessageFormat;
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2084
    array-length v3, p1

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    return-object p1

    .line 2087
    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    aget-object v3, p1, v5

    aput-object v3, v0, v5

    aget-object v3, p1, v6

    aput-object v3, v0, v6

    .line 2088
    .local v0, "listItems":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2091
    .local v1, "newItem":Ljava/lang/String;
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 2092
    .local v2, "newList":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2093
    aput-object v1, v2, v5

    .line 2096
    invoke-static {p0, v2}, Ljava/util/Locale;->composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 2199
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 2200
    const-string/jumbo v0, "he"

    if-ne p0, v0, :cond_0

    .line 2201
    const-string/jumbo v0, "iw"

    return-object v0

    .line 2202
    :cond_0
    const-string/jumbo v0, "yi"

    if-ne p0, v0, :cond_1

    .line 2203
    const-string/jumbo v0, "ji"

    return-object v0

    .line 2204
    :cond_1
    const-string/jumbo v0, "id"

    if-ne p0, v0, :cond_2

    .line 2205
    const-string/jumbo v0, "in"

    return-object v0

    .line 2207
    :cond_2
    return-object p0
.end method

.method private static createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p0, "lang"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 713
    invoke-static {p0, p1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 714
    .local v0, "base":Lsun/util/locale/BaseLocale;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method public static forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .locals 8
    .param p0, "languageTag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1518
    invoke-static {p0, v4}, Lsun/util/locale/LanguageTag;->parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;

    move-result-object v3

    .line 1519
    .local v3, "tag":Lsun/util/locale/LanguageTag;
    new-instance v1, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v1}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    .line 1520
    .local v1, "bldr":Lsun/util/locale/InternalLocaleBuilder;
    invoke-virtual {v1, v3}, Lsun/util/locale/InternalLocaleBuilder;->setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;

    .line 1521
    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 1522
    .local v0, "base":Lsun/util/locale/BaseLocale;
    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v2

    .line 1523
    .local v2, "exts":Lsun/util/locale/LocaleExtensions;
    if-nez v2, :cond_0

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1524
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v5

    .line 1525
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 1524
    invoke-static {v4, v5, v6, v7}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v2

    .line 1527
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v4

    return-object v4
.end method

.method private static formatList([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "stringList"    # [Ljava/lang/String;
    .param p1, "listPattern"    # Ljava/lang/String;
    .param p2, "listCompositionPattern"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2049
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 2050
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2051
    .local v3, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 2052
    if-lez v2, :cond_1

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2053
    :cond_1
    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2051
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2055
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2059
    .end local v2    # "i":I
    .end local v3    # "result":Ljava/lang/StringBuffer;
    :cond_3
    array-length v4, p0

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    .line 2060
    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 2061
    .local v1, "format":Ljava/text/MessageFormat;
    invoke-static {v1, p0}, Ljava/util/Locale;->composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2065
    .end local v1    # "format":Ljava/text/MessageFormat;
    :cond_4
    array-length v4, p0

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 2066
    .local v0, "args":[Ljava/lang/Object;
    array-length v4, p0

    const/4 v5, 0x1

    invoke-static {p0, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2067
    new-instance v4, Ljava/lang/Integer;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v6

    .line 2070
    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 2071
    .restart local v1    # "format":Ljava/text/MessageFormat;
    invoke-virtual {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1004
    invoke-static {}, Lsun/util/LocaleServiceProviderPool;->getAllAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    .locals 2
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 2215
    const/4 v0, 0x0

    .line 2217
    .local v0, "extensions":Lsun/util/locale/LocaleExtensions;
    const-string/jumbo v1, "ja"

    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2218
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2219
    const-string/jumbo v1, "jp"

    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2217
    if-eqz v1, :cond_1

    .line 2220
    const-string/jumbo v1, "JP"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2217
    if-eqz v1, :cond_1

    .line 2222
    sget-object v0, Lsun/util/locale/LocaleExtensions;->CALENDAR_JAPANESE:Lsun/util/locale/LocaleExtensions;

    .line 2230
    .end local v0    # "extensions":Lsun/util/locale/LocaleExtensions;
    :cond_0
    :goto_0
    return-object v0

    .line 2223
    .restart local v0    # "extensions":Lsun/util/locale/LocaleExtensions;
    :cond_1
    const-string/jumbo v1, "th"

    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2225
    const-string/jumbo v1, "th"

    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2223
    if-eqz v1, :cond_0

    .line 2226
    const-string/jumbo v1, "TH"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2223
    if-eqz v1, :cond_0

    .line 2228
    sget-object v0, Lsun/util/locale/LocaleExtensions;->NUMBER_THAI:Lsun/util/locale/LocaleExtensions;

    .local v0, "extensions":Lsun/util/locale/LocaleExtensions;
    goto :goto_0
.end method

.method public static getDefault()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 820
    sget-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 821
    invoke-static {}, Ljava/util/Locale;->initDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    .line 823
    :cond_0
    sget-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .locals 2
    .param p0, "category"    # Ljava/util/Locale$Category;

    .prologue
    .line 845
    invoke-static {}, Ljava/util/Locale;->-getjava-util-Locale$CategorySwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 857
    sget-boolean v0, Ljava/util/Locale;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unknown Category"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 847
    :pswitch_0
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 848
    invoke-static {p0}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    .line 850
    :cond_0
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    return-object v0

    .line 852
    :pswitch_1
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    if-nez v0, :cond_1

    .line 853
    invoke-static {p0}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    .line 855
    :cond_1
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    return-object v0

    .line 859
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 845
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1018
    invoke-static {}, Llibcore/icu/ICU;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1037
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .prologue
    .line 732
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .locals 2
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .param p4, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .prologue
    .line 737
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 738
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 737
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 741
    if-nez p4, :cond_2

    .line 742
    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object p4

    .line 745
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 746
    .local v0, "baseloc":Lsun/util/locale/BaseLocale;
    invoke-static {v0, p4}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method static getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .locals 2
    .param p0, "baseloc"    # Lsun/util/locale/BaseLocale;
    .param p1, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .prologue
    .line 750
    new-instance v0, Ljava/util/Locale$LocaleKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/Locale$LocaleKey;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale$LocaleKey;)V

    .line 751
    .local v0, "key":Ljava/util/Locale$LocaleKey;
    sget-object v1, Ljava/util/Locale;->LOCALECACHE:Ljava/util/Locale$Cache;

    invoke-virtual {v1, v0}, Ljava/util/Locale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    return-object v1
.end method

.method public static initDefault()Ljava/util/Locale;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 867
    const-string/jumbo v7, "user.locale"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 868
    .local v3, "languageTag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 869
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    return-object v7

    .line 874
    :cond_0
    const-string/jumbo v7, "user.language"

    const-string/jumbo v8, "en"

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 876
    .local v2, "language":Ljava/lang/String;
    const-string/jumbo v7, "user.region"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 877
    .local v4, "region":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 879
    const/16 v7, 0x5f

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 880
    .local v1, "i":I
    if-ltz v1, :cond_1

    .line 881
    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "country":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 887
    .local v6, "variant":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, ""

    .line 893
    .end local v1    # "i":I
    .local v5, "script":Ljava/lang/String;
    :goto_1
    invoke-static {v2, v5, v0, v6, v10}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v7

    return-object v7

    .line 884
    .end local v0    # "country":Ljava/lang/String;
    .end local v5    # "script":Ljava/lang/String;
    .end local v6    # "variant":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    move-object v0, v4

    .line 885
    .restart local v0    # "country":Ljava/lang/String;
    const-string/jumbo v6, ""

    .restart local v6    # "variant":Ljava/lang/String;
    goto :goto_0

    .line 889
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v6    # "variant":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "user.script"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 890
    .restart local v5    # "script":Ljava/lang/String;
    const-string/jumbo v7, "user.country"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 891
    .restart local v0    # "country":Ljava/lang/String;
    const-string/jumbo v7, "user.variant"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "variant":Ljava/lang/String;
    goto :goto_1
.end method

.method private static initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .locals 6
    .param p0, "category"    # Ljava/util/Locale$Category;

    .prologue
    .line 898
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 901
    .local v0, "defaultLocale":Ljava/util/Locale;
    iget-object v1, p0, Ljava/util/Locale$Category;->languageKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 902
    iget-object v2, p0, Ljava/util/Locale$Category;->scriptKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 903
    iget-object v3, p0, Ljava/util/Locale$Category;->countryKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 904
    iget-object v4, p0, Ljava/util/Locale$Category;->variantKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 905
    const/4 v5, 0x0

    .line 900
    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method private static isAsciiAlphaNum(Ljava/lang/String;)Z
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1664
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1665
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1666
    .local v0, "character":C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    .line 1667
    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    .line 1668
    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    .line 1669
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 1664
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1673
    .end local v0    # "character":C
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private static isUnM49AreaCode(Ljava/lang/String;)Z
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 1788
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 1789
    return v3

    .line 1792
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 1793
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1794
    .local v0, "character":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    .line 1795
    :cond_1
    return v3

    .line 1792
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1799
    .end local v0    # "character":C
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private static isValidBcp47Alpha(Ljava/lang/String;II)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .prologue
    const/4 v4, 0x0

    .line 1768
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1769
    .local v2, "length":I
    if-lt v2, p1, :cond_0

    if-le v2, p2, :cond_1

    .line 1770
    :cond_0
    return v4

    .line 1773
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 1774
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1775
    .local v0, "character":C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    .line 1776
    :cond_2
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    .line 1777
    :cond_3
    return v4

    .line 1773
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1781
    .end local v0    # "character":C
    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method private static isValidVariantSubtag(Ljava/lang/String;)Z
    .locals 5
    .param p0, "subTag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1868
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 1869
    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1870
    return v4

    .line 1872
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1873
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1874
    .local v0, "firstChar":C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1875
    return v4

    .line 1879
    .end local v0    # "firstChar":C
    :cond_1
    return v3
.end method

.method private static normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    .line 1644
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1645
    :cond_0
    const-string/jumbo v1, ""

    return-object v1

    .line 1648
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1649
    .local v0, "lowercaseLanguage":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1650
    if-eqz p1, :cond_2

    .line 1651
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1653
    :cond_2
    const-string/jumbo v1, "und"

    return-object v1

    .line 1657
    :cond_3
    return-object v0
.end method

.method private static normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "region"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    const/4 v2, 0x2

    .line 1750
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1751
    :cond_0
    const-string/jumbo v1, ""

    return-object v1

    .line 1754
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1755
    .local v0, "uppercaseRegion":Ljava/lang/String;
    invoke-static {v0, v2, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1756
    invoke-static {v0}, Ljava/util/Locale;->isUnM49AreaCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1764
    :cond_2
    return-object v0

    .line 1757
    :cond_3
    if-eqz p1, :cond_4

    .line 1758
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1760
    :cond_4
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private static normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "variant"    # Ljava/lang/String;

    .prologue
    .line 1846
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1847
    :cond_0
    const-string/jumbo v3, ""

    return-object v3

    .line 1852
    :cond_1
    const/16 v3, 0x2d

    const/16 v4, 0x5f

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1853
    .local v0, "normalizedVariant":Ljava/lang/String;
    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1855
    .local v2, "subTags":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    .line 1856
    .local v1, "subTag":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Locale;->isValidVariantSubtag(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1857
    new-instance v3, Ljava/util/IllformedLocaleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid variant: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1855
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1861
    .end local v1    # "subTag":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 11
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2153
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v4

    .line 2154
    .local v4, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v8, "language"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2155
    .local v5, "language":Ljava/lang/String;
    const-string/jumbo v8, "script"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2156
    .local v6, "script":Ljava/lang/String;
    const-string/jumbo v8, "country"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2157
    .local v1, "country":Ljava/lang/String;
    const-string/jumbo v8, "variant"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2158
    .local v7, "variant":Ljava/lang/String;
    const-string/jumbo v8, "extensions"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2159
    .local v3, "extStr":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6, v1, v7}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v8

    iput-object v8, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 2160
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 2162
    :try_start_0
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    .line 2163
    .local v0, "bldr":Lsun/util/locale/InternalLocaleBuilder;
    invoke-virtual {v0, v3}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    .line 2164
    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v8

    iput-object v8, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2152
    .end local v0    # "bldr":Lsun/util/locale/InternalLocaleBuilder;
    :goto_0
    return-void

    .line 2165
    :catch_0
    move-exception v2

    .line 2166
    .local v2, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v8, Ljava/util/IllformedLocaleException;

    invoke-virtual {v2}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2169
    .end local v2    # "e":Lsun/util/locale/LocaleSyntaxException;
    :cond_0
    iput-object v10, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2188
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 2189
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 2188
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V
    .locals 5
    .param p0, "category"    # Ljava/util/Locale$Category;
    .param p1, "newLocale"    # Ljava/util/Locale;

    .prologue
    const-class v2, Ljava/util/Locale;

    monitor-enter v2

    .line 973
    if-nez p0, :cond_0

    .line 974
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Category cannot be NULL"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 975
    :cond_0
    if-nez p1, :cond_1

    .line 976
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Can\'t set default locale to NULL"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 978
    :cond_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 979
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/PropertyPermission;

    .line 980
    const-string/jumbo v3, "user.language"

    const-string/jumbo v4, "write"

    .line 979
    invoke-direct {v1, v3, v4}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 981
    :cond_2
    invoke-static {}, Ljava/util/Locale;->-getjava-util-Locale$CategorySwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale$Category;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 989
    sget-boolean v1, Ljava/util/Locale;->-assertionsDisabled:Z

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Unknown Category"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 983
    :pswitch_0
    sput-object p1, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v2

    .line 972
    return-void

    .line 986
    :pswitch_1
    :try_start_2
    sput-object p1, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 981
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale;)V
    .locals 2
    .param p0, "newLocale"    # Ljava/util/Locale;

    .prologue
    const-class v1, Ljava/util/Locale;

    monitor-enter v1

    .line 937
    :try_start_0
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    .line 938
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    .line 939
    sput-object p0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    .line 940
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->setDefaultLocale(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 936
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2134
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 2135
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "language"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2136
    const-string/jumbo v1, "script"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2137
    const-string/jumbo v1, "country"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2138
    const-string/jumbo v1, "variant"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2139
    const-string/jumbo v2, "extensions"

    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2140
    const-string/jumbo v1, "hashcode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 2141
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 2133
    return-void

    .line 2139
    :cond_0
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1971
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    .local v1, "that":Ljava/util/Locale;
    return-object v1

    .line 1973
    .end local v1    # "that":Ljava/util/Locale;
    :catch_0
    move-exception v0

    .line 1974
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2007
    if-ne p0, p1, :cond_0

    .line 2008
    return v2

    .line 2009
    :cond_0
    instance-of v1, p1, Ljava/util/Locale;

    if-nez v1, :cond_1

    .line 2010
    return v3

    :cond_1
    move-object v1, p1

    .line 2011
    check-cast v1, Ljava/util/Locale;

    iget-object v0, v1, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 2012
    .local v0, "otherBase":Lsun/util/locale/BaseLocale;
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1, v0}, Lsun/util/locale/BaseLocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2013
    return v3

    .line 2015
    :cond_2
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_4

    .line 2016
    check-cast p1, Ljava/util/Locale;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    return v1

    :cond_3
    move v1, v3

    goto :goto_0

    .line 2018
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    check-cast p1, Ljava/util/Locale;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1, v2}, Lsun/util/locale/LocaleExtensions;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getBaseLocale()Lsun/util/locale/BaseLocale;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1723
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1731
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1733
    const-string/jumbo v3, ""

    return-object v3

    .line 1737
    :cond_0
    const/4 v3, 0x0

    .line 1736
    invoke-static {v0, v3}, Ljava/util/Locale;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1738
    .local v1, "normalizedRegion":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1739
    return-object v0

    .line 1742
    :cond_1
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1743
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1744
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1746
    :cond_2
    return-object v2
.end method

.method public final getDisplayLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1608
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1616
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, "languageCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1618
    const-string/jumbo v3, ""

    return-object v3

    .line 1629
    :cond_0
    const/4 v3, 0x0

    .line 1628
    invoke-static {v0, v3}, Ljava/util/Locale;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1630
    .local v1, "normalizedLanguage":Ljava/lang/String;
    const-string/jumbo v3, "und"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1631
    return-object v0

    .line 1636
    :cond_1
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1637
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1638
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1640
    :cond_2
    return-object v2
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1900
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 13
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 1920
    const/4 v1, 0x0

    .line 1921
    .local v1, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1922
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 1923
    .local v7, "languageCode":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1924
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 1925
    .local v4, "displayLanguage":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .end local v7    # "languageCode":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1926
    const/4 v1, 0x1

    .line 1928
    .end local v4    # "displayLanguage":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v8

    .line 1929
    .local v8, "scriptCode":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1930
    if-ne v1, v11, :cond_1

    .line 1931
    const-string/jumbo v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1933
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 1934
    .local v5, "displayScript":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    .end local v8    # "scriptCode":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    add-int/lit8 v1, v1, 0x1

    .line 1937
    .end local v5    # "displayScript":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 1938
    .local v2, "countryCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1939
    if-ne v1, v11, :cond_a

    .line 1940
    const-string/jumbo v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1945
    .local v3, "displayCountry":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    .end local v2    # "countryCode":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1946
    add-int/lit8 v1, v1, 0x1

    .line 1948
    .end local v3    # "displayCountry":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v9

    .line 1949
    .local v9, "variantCode":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1950
    if-ne v1, v11, :cond_c

    .line 1951
    const-string/jumbo v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 1956
    .local v6, "displayVariant":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_e

    .end local v9    # "variantCode":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    add-int/lit8 v1, v1, 0x1

    .line 1959
    .end local v6    # "displayVariant":Ljava/lang/String;
    :cond_6
    if-le v1, v11, :cond_7

    .line 1960
    const-string/jumbo v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1962
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .restart local v4    # "displayLanguage":Ljava/lang/String;
    .restart local v7    # "languageCode":Ljava/lang/String;
    :cond_8
    move-object v7, v4

    .line 1925
    goto :goto_0

    .end local v4    # "displayLanguage":Ljava/lang/String;
    .end local v7    # "languageCode":Ljava/lang/String;
    .restart local v5    # "displayScript":Ljava/lang/String;
    .restart local v8    # "scriptCode":Ljava/lang/String;
    :cond_9
    move-object v8, v5

    .line 1934
    goto :goto_1

    .line 1941
    .end local v5    # "displayScript":Ljava/lang/String;
    .end local v8    # "scriptCode":Ljava/lang/String;
    .restart local v2    # "countryCode":Ljava/lang/String;
    :cond_a
    if-ne v1, v12, :cond_3

    .line 1942
    const-string/jumbo v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .restart local v3    # "displayCountry":Ljava/lang/String;
    :cond_b
    move-object v2, v3

    .line 1945
    goto :goto_3

    .line 1952
    .end local v2    # "countryCode":Ljava/lang/String;
    .end local v3    # "displayCountry":Ljava/lang/String;
    .restart local v9    # "variantCode":Ljava/lang/String;
    :cond_c
    if-eq v1, v12, :cond_d

    const/4 v10, 0x3

    if-ne v1, v10, :cond_5

    .line 1953
    :cond_d
    const-string/jumbo v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .restart local v6    # "displayVariant":Ljava/lang/String;
    :cond_e
    move-object v9, v6

    .line 1956
    goto :goto_5
.end method

.method public getDisplayScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1685
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1696
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 1697
    .local v1, "scriptCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1698
    const-string/jumbo v2, ""

    return-object v2

    .line 1701
    :cond_0
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1702
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1703
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0, v2}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1706
    :cond_1
    return-object v0
.end method

.method public final getDisplayVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1808
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1819
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 1820
    .local v2, "variantCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1821
    const-string/jumbo v3, ""

    return-object v3

    .line 1825
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/util/Locale;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1830
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1831
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1832
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1839
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1840
    return-object v2

    .line 1826
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1827
    .local v0, "ilfe":Ljava/util/IllformedLocaleException;
    return-object v2

    .line 1842
    .end local v0    # "ilfe":Ljava/util/IllformedLocaleException;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public getExtension(C)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # C

    .prologue
    const/4 v0, 0x0

    .line 1115
    invoke-static {p1}, Lsun/util/locale/LocaleExtensions;->isValidKey(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed extension key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_0
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/locale/LocaleExtensions;->getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtensionKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1131
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v0, :cond_0

    .line 1132
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1134
    :cond_0
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getISO3Country()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 1578
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 1580
    .local v1, "region":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1581
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1582
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1583
    const-string/jumbo v2, ""

    return-object v2

    .line 1587
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "en-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/ICU;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1588
    .local v0, "country3":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1589
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t find 3-letter country code for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1590
    iget-object v4, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v4}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 1589
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FormatData_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ShortCountry"

    .line 1589
    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1592
    :cond_2
    return-object v0
.end method

.method public getISO3Language()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 1547
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1548
    .local v0, "lang":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1549
    return-object v0

    .line 1550
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1551
    const-string/jumbo v2, ""

    return-object v2

    .line 1554
    :cond_1
    invoke-static {v0}, Llibcore/icu/ICU;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1555
    .local v1, "language3":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1556
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t find 3-letter language code for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FormatData_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ShortLanguage"

    .line 1556
    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1560
    :cond_2
    return-object v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLocaleExtensions()Lsun/util/locale/LocaleExtensions;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1146
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v0, :cond_0

    .line 1147
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1149
    :cond_0
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1182
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v0, :cond_0

    .line 1183
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1185
    :cond_0
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1167
    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed Unicode locale key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1170
    :cond_0
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0, p1}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1985
    iget v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 1986
    .local v0, "hc":I
    if-nez v0, :cond_1

    .line 1987
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->hashCode()I

    move-result v0

    .line 1988
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v1, :cond_0

    .line 1989
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1991
    :cond_0
    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 1993
    :cond_1
    return v0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1351
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    iget-object v7, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-static {v6, v7}, Lsun/util/locale/LanguageTag;->parseLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/LanguageTag;

    move-result-object v5

    .line 1352
    .local v5, "tag":Lsun/util/locale/LanguageTag;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1354
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1355
    .local v3, "subtag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1356
    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    :cond_0
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 1360
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1361
    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    :cond_1
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v3

    .line 1366
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1367
    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    :cond_2
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v4

    .line 1372
    .local v4, "subtags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1373
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1378
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v4

    .line 1379
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1380
    .restart local v1    # "s":Ljava/lang/String;
    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1384
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v3

    .line 1385
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 1386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 1387
    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    :cond_5
    const-string/jumbo v6, "x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x5f

    .line 1251
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    const/4 v1, 0x1

    .line 1252
    .local v1, "l":Z
    :goto_0
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_a

    const/4 v4, 0x1

    .line 1253
    .local v4, "s":Z
    :goto_1
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b

    const/4 v2, 0x1

    .line 1254
    .local v2, "r":Z
    :goto_2
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_c

    const/4 v5, 0x1

    .line 1255
    .local v5, "v":Z
    :goto_3
    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v6, :cond_d

    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v6}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_d

    const/4 v0, 0x1

    .line 1257
    .local v0, "e":Z
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1258
    .local v3, "result":Ljava/lang/StringBuilder;
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    if-eqz v0, :cond_1

    .line 1259
    :cond_0
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1260
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v7

    .line 1259
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    :cond_1
    if-eqz v5, :cond_3

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1263
    :cond_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1264
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 1263
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    :cond_3
    if-eqz v4, :cond_5

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 1268
    :cond_4
    const-string/jumbo v6, "_#"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1269
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v7

    .line 1268
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    :cond_5
    if-eqz v0, :cond_8

    if-nez v1, :cond_6

    if-eqz v2, :cond_8

    .line 1273
    :cond_6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1274
    if-nez v4, :cond_7

    .line 1275
    const/16 v6, 0x23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1277
    :cond_7
    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v6}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1251
    .end local v0    # "e":Z
    .end local v1    # "l":Z
    .end local v2    # "r":Z
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .end local v4    # "s":Z
    .end local v5    # "v":Z
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "l":Z
    goto/16 :goto_0

    .line 1252
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "s":Z
    goto/16 :goto_1

    .line 1253
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "r":Z
    goto/16 :goto_2

    .line 1254
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "v":Z
    goto/16 :goto_3

    .line 1255
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "e":Z
    goto :goto_4
.end method
