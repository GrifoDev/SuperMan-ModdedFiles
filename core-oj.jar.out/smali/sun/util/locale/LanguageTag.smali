.class public Lsun/util/locale/LanguageTag;
.super Ljava/lang/Object;
.source "LanguageTag.java"


# static fields
.field private static final GRANDFATHERED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATEUSE:Ljava/lang/String; = "x"

.field public static final PRIVUSE_VARIANT_PREFIX:Ljava/lang/String; = "lvariant"

.field public static final SEP:Ljava/lang/String; = "-"

.field public static final UNDETERMINED:Ljava/lang/String; = "und"


# instance fields
.field private extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private extlangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private privateuse:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private script:Ljava/lang/String;

.field private variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lsun/util/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    const/16 v2, 0x1a

    new-array v1, v2, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "art-lojban"

    aput-object v4, v2, v3

    const-string/jumbo v4, "jbo"

    aput-object v4, v2, v5

    aput-object v2, v1, v3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "cel-gaulish"

    aput-object v4, v2, v3

    const-string/jumbo v4, "xtg-x-cel-gaulish"

    aput-object v4, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "en-GB-oed"

    aput-object v4, v2, v3

    const-string/jumbo v4, "en-GB-x-oed"

    aput-object v4, v2, v5

    aput-object v2, v1, v6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "i-ami"

    aput-object v4, v2, v3

    const-string/jumbo v4, "ami"

    aput-object v4, v2, v5

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "i-bnn"

    aput-object v4, v2, v3

    const-string/jumbo v4, "bnn"

    aput-object v4, v2, v5

    const/4 v4, 0x4

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "i-default"

    aput-object v4, v2, v3

    const-string/jumbo v4, "en-x-i-default"

    aput-object v4, v2, v5

    const/4 v4, 0x5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "i-enochian"

    aput-object v4, v2, v3

    const-string/jumbo v4, "und-x-i-enochian"

    aput-object v4, v2, v5

    const/4 v4, 0x6

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "i-hak"

    aput-object v4, v2, v3

    const-string/jumbo v4, "hak"

    aput-object v4, v2, v5

    const/4 v4, 0x7

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "i-klingon"

    aput-object v4, v2, v3

    const-string/jumbo v4, "tlh"

    aput-object v4, v2, v5

    const/16 v4, 0x8

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "i-lux"

    aput-object v4, v2, v3

    const-string/jumbo v4, "lb"

    aput-object v4, v2, v5

    const/16 v4, 0x9

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "i-mingo"

    aput-object v4, v2, v3

    const-string/jumbo v4, "see-x-i-mingo"

    aput-object v4, v2, v5

    const/16 v4, 0xa

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "i-navajo"

    aput-object v4, v2, v3

    const-string/jumbo v4, "nv"

    aput-object v4, v2, v5

    const/16 v4, 0xb

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "i-pwn"

    aput-object v4, v2, v3

    const-string/jumbo v4, "pwn"

    aput-object v4, v2, v5

    const/16 v4, 0xc

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "i-tao"

    aput-object v4, v2, v3

    const-string/jumbo v4, "tao"

    aput-object v4, v2, v5

    const/16 v4, 0xd

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "i-tay"

    aput-object v4, v2, v3

    const-string/jumbo v4, "tay"

    aput-object v4, v2, v5

    const/16 v4, 0xe

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "i-tsu"

    aput-object v4, v2, v3

    const-string/jumbo v4, "tsu"

    aput-object v4, v2, v5

    const/16 v4, 0xf

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "no-bok"

    aput-object v4, v2, v3

    const-string/jumbo v4, "nb"

    aput-object v4, v2, v5

    const/16 v4, 0x10

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "no-nyn"

    aput-object v4, v2, v3

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v5

    const/16 v4, 0x11

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "sgn-BE-FR"

    aput-object v4, v2, v3

    const-string/jumbo v4, "sfb"

    aput-object v4, v2, v5

    const/16 v4, 0x12

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "sgn-BE-NL"

    aput-object v4, v2, v3

    const-string/jumbo v4, "vgt"

    aput-object v4, v2, v5

    const/16 v4, 0x13

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "sgn-CH-DE"

    aput-object v4, v2, v3

    const-string/jumbo v4, "sgg"

    aput-object v4, v2, v5

    const/16 v4, 0x14

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zh-guoyu"

    aput-object v4, v2, v3

    const-string/jumbo v4, "cmn"

    aput-object v4, v2, v5

    const/16 v4, 0x15

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zh-hakka"

    aput-object v4, v2, v3

    const-string/jumbo v4, "hak"

    aput-object v4, v2, v5

    const/16 v4, 0x16

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zh-min"

    aput-object v4, v2, v3

    const-string/jumbo v4, "nan-x-zh-min"

    aput-object v4, v2, v5

    const/16 v4, 0x17

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zh-min-nan"

    aput-object v4, v2, v3

    const-string/jumbo v4, "nan"

    aput-object v4, v2, v5

    const/16 v4, 0x18

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zh-xiang"

    aput-object v4, v2, v3

    const-string/jumbo v4, "hsn"

    aput-object v4, v2, v5

    const/16 v4, 0x19

    aput-object v2, v1, v4

    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    sget-object v5, Lsun/util/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    aget-object v6, v0, v3

    invoke-static {v6}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    return-void
.end method

.method public static canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeExtensionSingleton(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeExtensionSubtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeExtlang(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizePrivateuseSubtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isExtensionSingleton(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "x"

    invoke-static {v2, p0}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isExtensionSingletonChar(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/util/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExtensionSubtag(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isExtlang(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLanguage(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPrivateusePrefix(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "x"

    invoke-static {v0, p0}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrivateusePrefixChar(C)Z
    .locals 2

    const-string/jumbo v0, "x"

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPrivateuseSubtag(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRegion(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isNumericString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScript(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVariant(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isNumeric(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public static parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;
    .locals 6

    if-nez p1, :cond_2

    new-instance p1, Lsun/util/locale/ParseStatus;

    invoke-direct {p1}, Lsun/util/locale/ParseStatus;-><init>()V

    :goto_0
    sget-object v4, Lsun/util/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v1, Lsun/util/locale/StringTokenIterator;

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const-string/jumbo v5, "-"

    invoke-direct {v1, v4, v5}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v3, Lsun/util/locale/LanguageTag;

    invoke-direct {v3}, Lsun/util/locale/LanguageTag;-><init>()V

    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parseLanguage(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parseExtlangs(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parseScript(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parseRegion(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parseVariants(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parseExtensions(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    :cond_0
    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parsePrivateuse(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    :goto_2
    return-object v3

    :cond_2
    invoke-virtual {p1}, Lsun/util/locale/ParseStatus;->reset()V

    goto :goto_0

    :cond_3
    new-instance v1, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v4, "-"

    invoke-direct {v1, p0, v4}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v4

    iput v4, p1, Lsun/util/locale/ParseStatus;->errorIndex:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "Empty subtag"

    iput-object v4, p1, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid subtag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    goto :goto_2
.end method

.method private parseExtensions(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 7

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    return v5

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v4

    move-object v3, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v5

    iput v5, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget v5, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    if-gt v5, v4, :cond_4

    iput v4, p2, Lsun/util/locale/ParseStatus;->errorIndex:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Incomplete extension \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    :cond_3
    return v0

    :cond_4
    iget-object v5, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    :cond_5
    iget-object v5, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseExtlangs(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 4

    const/4 v3, 0x3

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isExtlang(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x1

    iget-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    :cond_5
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    iget-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_2

    goto :goto_0
.end method

.method private parseLanguage(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 3

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    iput-object v1, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    :cond_2
    return v0
.end method

.method public static parseLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/LanguageTag;
    .locals 24

    new-instance v16, Lsun/util/locale/LanguageTag;

    invoke-direct/range {v16 .. v16}, Lsun/util/locale/LanguageTag;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v18

    const/4 v6, 0x0

    const/4 v12, 0x0

    invoke-static {v7}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    const-string/jumbo v21, "iw"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    const-string/jumbo v7, "he"

    :cond_0
    :goto_0
    move-object/from16 v0, v16

    iput-object v7, v0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    :cond_1
    invoke-static {v15}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-static {v15}, Lsun/util/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    const/4 v6, 0x1

    :cond_2
    invoke-static {v14}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-static {v14}, Lsun/util/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    const/4 v6, 0x1

    :cond_3
    move-object/from16 v0, v16

    iget-object v0, v0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "no"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, v16

    iget-object v0, v0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "NO"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    const-string/jumbo v21, "NY"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    const-string/jumbo v21, "nn"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    const-string/jumbo v18, ""

    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_8

    const/16 v19, 0x0

    new-instance v20, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v21, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v21

    if-nez v21, :cond_5

    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lsun/util/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_b

    :cond_5
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    const/4 v6, 0x1

    :cond_6
    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v21

    if-nez v21, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v21

    if-nez v21, :cond_7

    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_d

    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_8
    const/4 v5, 0x0

    const/4 v11, 0x0

    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Character;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lsun/util/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lsun/util/locale/Extension;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v21

    invoke-static/range {v21 .. v21}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-virtual {v4}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_9
    const-string/jumbo v21, "ji"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const-string/jumbo v7, "yi"

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v21, "in"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    const-string/jumbo v7, "id"

    goto/16 :goto_0

    :cond_b
    if-nez v19, :cond_c

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_e

    const-string/jumbo v21, "-"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    if-nez v5, :cond_10

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_10
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_11
    if-eqz v5, :cond_12

    move-object/from16 v0, v16

    iput-object v5, v0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    const/4 v6, 0x1

    :cond_12
    if-eqz v12, :cond_13

    if-nez v11, :cond_17

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "lvariant-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_13
    :goto_4
    if-eqz v11, :cond_14

    move-object/from16 v0, v16

    iput-object v11, v0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    :cond_14
    move-object/from16 v0, v16

    iget-object v0, v0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_16

    if-nez v6, :cond_15

    if-nez v11, :cond_16

    :cond_15
    const-string/jumbo v21, "und"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    :cond_16
    return-object v16

    :cond_17
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "lvariant"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    const-string/jumbo v23, "-"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4
.end method

.method private parsePrivateuse(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 5

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    return v4

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    iget v4, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    if-gt v4, v3, :cond_5

    iput v3, p2, Lsun/util/locale/ParseStatus;->errorIndex:I

    const-string/jumbo v4, "Incomplete privateuse"

    iput-object v4, p2, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    :cond_3
    :goto_1
    return v0

    :cond_4
    const-string/jumbo v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    iput v4, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private parseRegion(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 3

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    iput-object v1, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    :cond_2
    return v0
.end method

.method private parseScript(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 3

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    iput-object v1, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    :cond_2
    return v0
.end method

.method private parseVariants(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 4

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    return v0

    :cond_3
    const/4 v0, 0x1

    iget-object v2, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    :cond_4
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtlangs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateuse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    return-object v0
.end method

.method public getVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
