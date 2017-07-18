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

    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

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

    new-instance v0, Ljava/util/Locale$Cache;

    invoke-direct {v0, v6}, Ljava/util/Locale$Cache;-><init>(Ljava/util/Locale$Cache;)V

    sput-object v0, Ljava/util/Locale;->LOCALECACHE:Ljava/util/Locale$Cache;

    const-string/jumbo v0, "en"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v0, "fr"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    const-string/jumbo v0, "de"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    const-string/jumbo v0, "it"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    const-string/jumbo v0, "ja"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    const-string/jumbo v0, "ko"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const-string/jumbo v0, "zh"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string/jumbo v0, "zh"

    const-string/jumbo v3, "CN"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string/jumbo v0, "zh"

    const-string/jumbo v3, "TW"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    const-string/jumbo v0, "fr"

    const-string/jumbo v3, "FR"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    const-string/jumbo v0, "de"

    const-string/jumbo v3, "DE"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    const-string/jumbo v0, "it"

    const-string/jumbo v3, "IT"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    const-string/jumbo v0, "ja"

    const-string/jumbo v3, "JP"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    const-string/jumbo v0, "ko"

    const-string/jumbo v3, "KR"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    const-string/jumbo v0, "en"

    const-string/jumbo v3, "GB"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string/jumbo v0, "en"

    const-string/jumbo v3, "US"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v0, "en"

    const-string/jumbo v3, "CA"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    const-string/jumbo v0, "fr"

    const-string/jumbo v3, "CA"

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    const-string/jumbo v0, ""

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sput-object v6, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    sput-object v6, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    sput-object v6, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "language"

    const-class v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v0, v1

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "country"

    const-class v4, Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "variant"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "hashcode"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "script"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "extensions"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Ljava/util/Locale;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    sput-object v6, Ljava/util/Locale;->isoLanguages:[Ljava/lang/String;

    sput-object v6, Ljava/util/Locale;->isoCountries:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    if-eqz p3, :cond_0

    invoke-static {p1}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    const-string/jumbo v0, ""

    invoke-static {p1, v0, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    return-void
.end method

.method private constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    iput-object p1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    iput-object p2, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    return-void
.end method

.method synthetic constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/Locale;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V

    return-void
.end method

.method public static adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "he"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "iw"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "in"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "yi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "ji"

    goto :goto_0
.end method

.method private static composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    array-length v3, p1

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    return-object p1

    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    aget-object v3, p1, v5

    aput-object v3, v0, v5

    aget-object v3, p1, v6

    aput-object v3, v0, v6

    invoke-virtual {p0, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [Ljava/lang/String;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v1, v2, v5

    invoke-static {p0, v2}, Ljava/util/Locale;->composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "he"

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "iw"

    return-object v0

    :cond_0
    const-string/jumbo v0, "yi"

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "ji"

    return-object v0

    :cond_1
    const-string/jumbo v0, "id"

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "in"

    return-object v0

    :cond_2
    return-object p0
.end method

.method private static createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    invoke-static {p0, p1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method public static forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .locals 8

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lsun/util/locale/LanguageTag;->parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;

    move-result-object v3

    new-instance v1, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v1}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    invoke-virtual {v1, v3}, Lsun/util/locale/InternalLocaleBuilder;->setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v2

    :cond_0
    invoke-static {v0, v2}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v4

    return-object v4
.end method

.method private static formatList([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    if-lez v2, :cond_1

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    array-length v4, p0

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Ljava/util/Locale;->composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :cond_4
    array-length v4, p0

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    array-length v4, p0

    const/4 v5, 0x1

    invoke-static {p0, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/lang/Integer;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v6

    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Lsun/util/LocaleServiceProviderPool;->getAllAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "ja"

    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "jp"

    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "JP"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lsun/util/locale/LocaleExtensions;->CALENDAR_JAPANESE:Lsun/util/locale/LocaleExtensions;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "th"

    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "th"

    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "TH"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lsun/util/locale/LocaleExtensions;->NUMBER_THAI:Lsun/util/locale/LocaleExtensions;

    goto :goto_0
.end method

.method public static getDefault()Ljava/util/Locale;
    .locals 1

    sget-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->initDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    :cond_0
    sget-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->-getjava-util-Locale$CategorySwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Ljava/util/Locale;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unknown Category"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    :cond_0
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    return-object v0

    :pswitch_1
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    :cond_1
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    return-object v0

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object p4

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    invoke-static {v0, p4}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method static getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .locals 2

    new-instance v0, Ljava/util/Locale$LocaleKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/Locale$LocaleKey;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale$LocaleKey;)V

    sget-object v1, Ljava/util/Locale;->LOCALECACHE:Ljava/util/Locale$Cache;

    invoke-virtual {v1, v0}, Ljava/util/Locale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    return-object v1
.end method

.method public static initDefault()Ljava/util/Locale;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string/jumbo v7, "user.locale"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    return-object v7

    :cond_0
    const-string/jumbo v7, "user.language"

    const-string/jumbo v8, "en"

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "user.region"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/16 v7, 0x5f

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    const-string/jumbo v5, ""

    :goto_1
    invoke-static {v2, v5, v0, v6, v10}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v7

    return-object v7

    :cond_1
    move-object v0, v4

    const-string/jumbo v6, ""

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "user.script"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "user.country"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "user.variant"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private static initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Locale$Category;->languageKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Locale$Category;->scriptKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Locale$Category;->countryKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Locale$Category;->variantKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method private static isAsciiAlphaNum(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private static isUnM49AreaCode(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private static isValidBcp47Alpha(Ljava/lang/String;II)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p1, :cond_0

    if-le v2, p2, :cond_1

    :cond_0
    return v4

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    :cond_2
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    :cond_3
    return v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method private static isValidVariantSubtag(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    :cond_1
    return v3
.end method

.method private static normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, ""

    return-object v1

    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

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

    :cond_2
    const-string/jumbo v1, "und"

    return-object v1

    :cond_3
    return-object v0
.end method

.method private static normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, ""

    return-object v1

    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/util/Locale;->isUnM49AreaCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return-object v0

    :cond_3
    if-eqz p1, :cond_4

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

    :cond_4
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private static normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, ""

    return-object v3

    :cond_1
    const/16 v3, 0x2d

    const/16 v4, 0x5f

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/util/Locale;->isValidVariantSubtag(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

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

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v4

    const-string/jumbo v8, "language"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v8, "script"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v8, "country"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v8, "variant"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "extensions"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6, v1, v7}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v8

    iput-object v8, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    :try_start_0
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    invoke-virtual {v0, v3}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v8

    iput-object v8, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    new-instance v8, Ljava/util/IllformedLocaleException;

    invoke-virtual {v2}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v8

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

    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V
    .locals 5

    const-class v2, Ljava/util/Locale;

    monitor-enter v2

    if-nez p0, :cond_0

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

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Can\'t set default locale to NULL"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/PropertyPermission;

    const-string/jumbo v3, "user.language"

    const-string/jumbo v4, "write"

    invoke-direct {v1, v3, v4}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_2
    invoke-static {}, Ljava/util/Locale;->-getjava-util-Locale$CategorySwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale$Category;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    sget-boolean v1, Ljava/util/Locale;->-assertionsDisabled:Z

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Unknown Category"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    sput-object p1, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v2

    return-void

    :pswitch_1
    :try_start_2
    sput-object p1, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale;)V
    .locals 2

    const-class v1, Ljava/util/Locale;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    sput-object p0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->setDefaultLocale(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string/jumbo v1, "language"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "script"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "country"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "variant"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "extensions"

    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "hashcode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void

    :cond_0
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v2

    :cond_0
    instance-of v1, p1, Ljava/util/Locale;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Locale;

    iget-object v0, v1, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1, v0}, Lsun/util/locale/BaseLocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_4

    check-cast p1, Ljava/util/Locale;

    iget-object v1, p1, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    return v1

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    check-cast p1, Ljava/util/Locale;

    iget-object v2, p1, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1, v2}, Lsun/util/locale/LocaleExtensions;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getBaseLocale()Lsun/util/locale/BaseLocale;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayCountry()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    return-object v3

    :cond_0
    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/util/Locale;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public final getDisplayLanguage()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    return-object v3

    :cond_0
    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/util/Locale;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "und"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :cond_0
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    if-ne v1, v11, :cond_1

    const-string/jumbo v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    if-ne v1, v11, :cond_a

    const-string/jumbo v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_4
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    if-ne v1, v11, :cond_c

    const-string/jumbo v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_e

    :goto_5
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_6
    if-le v1, v11, :cond_7

    const-string/jumbo v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    :cond_8
    move-object v7, v4

    goto :goto_0

    :cond_9
    move-object v8, v5

    goto :goto_1

    :cond_a
    if-ne v1, v12, :cond_3

    const-string/jumbo v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    move-object v2, v3

    goto :goto_3

    :cond_c
    if-eq v1, v12, :cond_d

    const/4 v10, 0x3

    if-ne v1, v10, :cond_5

    :cond_d
    const-string/jumbo v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_e
    move-object v9, v6

    goto :goto_5
.end method

.method public getDisplayScript()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0, v2}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getDisplayVariant()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    return-object v3

    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/util/Locale;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    move-exception v0

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getExtension(C)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lsun/util/locale/LocaleExtensions;->isValidKey(C)Z

    move-result v1

    if-nez v1, :cond_0

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

    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

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

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, ""

    return-object v2

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

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t find 3-letter country code for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v4}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

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

    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

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

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, ""

    return-object v2

    :cond_1
    invoke-static {v0}, Llibcore/icu/ICU;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

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

    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_2
    return-object v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLocaleExtensions()Lsun/util/locale/LocaleExtensions;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

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

    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

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

    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

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

    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljava/util/Locale;->hashCodeValue:I

    if-nez v0, :cond_1

    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    :cond_1
    return v0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 8

    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    iget-object v7, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-static {v6, v7}, Lsun/util/locale/LanguageTag;->parseLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/LanguageTag;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lsun/util/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string/jumbo v6, "x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x5f

    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    const/4 v1, 0x1

    :goto_0
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_a

    const/4 v4, 0x1

    :goto_1
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b

    const/4 v2, 0x1

    :goto_2
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_c

    const/4 v5, 0x1

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

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v5, :cond_3

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v4, :cond_5

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v6, "_#"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v0, :cond_8

    if-nez v1, :cond_6

    if-eqz v2, :cond_8

    :cond_6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v4, :cond_7

    const/16 v6, 0x23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v6}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v0, 0x0

    goto :goto_4
.end method
