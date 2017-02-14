.class public Lcom/android/vcard/VCardConfig;
.super Ljava/lang/Object;
.source "VCardConfig.java"


# static fields
.field public static final DEFAULT_EXPORT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_IMPORT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_INTERMEDIATE_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final EXPORT_CHARSET_EUCKR:Ljava/lang/String; = "EUC-KR"

.field public static final FLAG_APPEND_TYPE_PARAM:I = 0x4000000

.field public static final FLAG_CONVERT_PHONETIC_NAME_STRINGS:I = 0x8000000

.field private static final FLAG_DOCOMO:I = 0x20000000

.field public static final FLAG_NAME_NUMBER_ONLY_EXPORT:I = 0x400000

.field public static final FLAG_REFRAIN_ADDRESS:I = 0x40000

.field public static final FLAG_REFRAIN_EMAIL:I = 0x80000

.field public static final FLAG_REFRAIN_EVENTS:I = 0x4000

.field public static final FLAG_REFRAIN_IMAGE_EXPORT:I = 0x800000

.field public static final FLAG_REFRAIN_IMS:I = 0x2000

.field public static final FLAG_REFRAIN_NOTES:I = 0x8000

.field public static final FLAG_REFRAIN_ORGANIZATION:I = 0x20000

.field public static final FLAG_REFRAIN_PHONE_NUMBER_FORMATTING:I = 0x2000000

.field public static final FLAG_REFRAIN_QP_TO_NAME_PROPERTIES:I = 0x10000000

.field public static final FLAG_REFRAIN_RELATION:I = 0x800

.field public static final FLAG_REFRAIN_SIP_ADDRESS:I = 0x1000

.field public static final FLAG_REFRAIN_WEBSITES:I = 0x10000

.field private static final FLAG_SAMSUNG:I = 0x100000

.field private static final FLAG_USE_ANDROID_PROPERTY:I = -0x80000000

.field private static final FLAG_USE_DEFACT_PROPERTY:I = 0x40000000

.field public static final IMPORT_CHARSET_EUCKR:Ljava/lang/String; = "EUC-KR"

.field public static final IMPORT_CHARSET_SHIFTJIS:Ljava/lang/String; = "SHIFT_JIS"

.field static final LOG_LEVEL:I = 0x0

.field static final LOG_LEVEL_NONE:I = 0x0

.field static final LOG_LEVEL_PERFORMANCE_MEASUREMENT:I = 0x1

.field static final LOG_LEVEL_SHOW_WARNING:I = 0x2

.field static final LOG_LEVEL_VERBOSE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field public static final NAME_ORDER_DEFAULT:I = 0x0

.field public static final NAME_ORDER_EUROPE:I = 0x4

.field public static final NAME_ORDER_JAPANESE:I = 0x8

.field private static final NAME_ORDER_MASK:I = 0xc

.field public static VCARD_TYPE_DEFAULT:I = 0x0

.field public static final VCARD_TYPE_DOCOMO:I = 0x38000008

.field static final VCARD_TYPE_DOCOMO_STR:Ljava/lang/String; = "docomo"

.field public static final VCARD_TYPE_UNKNOWN:I = 0x0

.field public static final VCARD_TYPE_V21_COREA:I = -0x3bf00000

.field static VCARD_TYPE_V21_COREA_STR:Ljava/lang/String; = null

.field public static final VCARD_TYPE_V21_EUROPE:I = -0x3ffffffc

.field static final VCARD_TYPE_V21_EUROPE_STR:Ljava/lang/String; = "v21_europe"

.field public static final VCARD_TYPE_V21_GENERIC:I = -0x40000000

.field static VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String; = null

.field public static final VCARD_TYPE_V21_JAPANESE:I = -0x3ffffff8

.field public static final VCARD_TYPE_V21_JAPANESE_MOBILE:I = 0x18000008

.field static final VCARD_TYPE_V21_JAPANESE_MOBILE_STR:Ljava/lang/String; = "v21_japanese_mobile"

.field static final VCARD_TYPE_V21_JAPANESE_STR:Ljava/lang/String; = "v21_japanese_utf8"

.field public static final VCARD_TYPE_V30_EUROPE:I = -0x3ffffffb

.field static final VCARD_TYPE_V30_EUROPE_STR:Ljava/lang/String; = "v30_europe"

.field public static final VCARD_TYPE_V30_GENERIC:I = -0x3fffffff

.field static final VCARD_TYPE_V30_GENERIC_STR:Ljava/lang/String; = "v30_generic"

.field public static final VCARD_TYPE_V30_JAPANESE:I = -0x3ffffff7

.field static final VCARD_TYPE_V30_JAPANESE_STR:Ljava/lang/String; = "v30_japanese_utf8"

.field public static final VCARD_TYPE_V40_GENERIC:I = -0x3ffffffe

.field static final VCARD_TYPE_V40_GENERIC_STR:Ljava/lang/String; = "v40_generic"

.field public static final VERSION_21:I = 0x0

.field public static final VERSION_30:I = 0x1

.field public static final VERSION_40:I = 0x2

.field public static final VERSION_MASK:I = 0x3

.field public static isJapaneseSpacialized:Z

.field public static isValidCscFeature:Z

.field private static final sJapaneseMobileTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVCardTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const v6, 0x18000008

    const/4 v5, 0x0

    const v4, -0x3ffffff7    # -2.0000021f

    const v3, -0x3ffffff8    # -2.000002f

    const/high16 v2, -0x40000000    # -2.0f

    const-string v0, "v21_generic"

    sput-object v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String;

    const-string v0, "v21_corea"

    sput-object v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_V21_COREA_STR:Ljava/lang/String;

    sput v2, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "v30_generic"

    const v2, -0x3fffffff    # -2.0000002f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_V21_COREA_STR:Ljava/lang/String;

    const/high16 v2, -0x3bf00000    # -576.0f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "v21_europe"

    const v2, -0x3ffffffc    # -2.000001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "v30_europe"

    const v2, -0x3ffffffb    # -2.0000012f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "v21_japanese_utf8"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "v30_japanese_utf8"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "v21_japanese_mobile"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "docomo"

    const v2, 0x38000008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    const v1, 0x38000008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sput-boolean v5, Lcom/android/vcard/VCardConfig;->isValidCscFeature:Z

    sput-boolean v5, Lcom/android/vcard/VCardConfig;->isJapaneseSpacialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendTypeParamName(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNameOrderType(I)I
    .locals 1

    and-int/lit8 v0, p0, 0xc

    return v0
.end method

.method public static getVCardTypeFromString(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "default"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    goto :goto_0

    :cond_1
    const-string v1, "vCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown vCard type String: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    goto :goto_0
.end method

.method public static isDoCoMo(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJapanSpacialized()Z
    .locals 3

    sget-boolean v0, Lcom/android/vcard/VCardConfig;->isValidCscFeature:Z

    if-nez v0, :cond_0

    const-string v0, "JPN"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_VcardException4"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/vcard/VCardConfig;->isJapaneseSpacialized:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/vcard/VCardConfig;->isValidCscFeature:Z

    :cond_0
    sget-boolean v0, Lcom/android/vcard/VCardConfig;->isJapaneseSpacialized:Z

    return v0
.end method

.method public static isJapaneseDevice(I)Z
    .locals 2

    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVersion21(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVersion30(I)Z
    .locals 2

    const/4 v0, 0x1

    and-int/lit8 v1, p0, 0x3

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVersion40(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needsToConvertPhoneticString(I)Z
    .locals 1

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onlyOneNoteFieldIsAvailable(I)Z
    .locals 1

    const v0, 0x38000008

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static refrainPhoneNumberFormatting(I)Z
    .locals 1

    const/high16 v0, 0x2000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldRefrainQPToNameProperties(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldUseQuotedPrintable(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showPerformanceLog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static usesAndroidSpecificProperty(I)Z
    .locals 1

    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static usesDefactProperty(I)Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
