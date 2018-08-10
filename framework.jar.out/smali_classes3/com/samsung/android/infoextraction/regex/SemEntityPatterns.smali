.class public Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;
.super Ljava/lang/Object;
.source "SemEntityPatterns.java"


# static fields
.field public static COUNTRY_DATE_STRING:Ljava/lang/String; = null

.field public static COUNTRY_TIME_STRING:Ljava/lang/String; = null

.field public static final DEFAULT_DATE_STRING_TYPE1:Ljava/lang/String; = "(((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]]))"

.field public static final DEFAULT_DATE_STRING_TYPE2:Ljava/lang/String; = "(((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]]))"

.field public static final DEFAULT_TIME_STRING:Ljava/lang/String; = "(((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

.field private static final DOMAIN_NAME:Ljava/util/regex/Pattern;

.field public static final EMAIL_ADDRESS:Ljava/util/regex/Pattern;

.field public static final EMAIL_ADDRESS_WEAK:Ljava/util/regex/Pattern;

.field private static final GOOD_GTLD_CHAR:Ljava/lang/String; = "a-zA-Z\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff"

.field private static final GOOD_IRI_CHAR:Ljava/lang/String; = "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

.field private static final GOOD_IRI_HOST_CHAR:Ljava/lang/String; = "a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff"

.field private static final GTLD:Ljava/lang/String; = "[a-zA-Z\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]{2,63}"

.field private static final HOST_NAME:Ljava/lang/String; = "([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff\\-]{0,61}[a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]){0,1}\\.)+[a-zA-Z\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]{2,63}"

.field public static final HYPHEN:Ljava/util/regex/Pattern;

.field private static final IP_ADDRESS:Ljava/util/regex/Pattern;

.field private static final IRI:Ljava/lang/String; = "[a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff\\-]{0,61}[a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]){0,1}"

.field public static final PHONE_NUMBER:Ljava/util/regex/Pattern;

.field public static final PHONE_NUMBER_WEAK:Ljava/util/regex/Pattern;

.field public static final PREFIX_FOR_DATE_MILLIS:Ljava/lang/String; = "((Date|date|\ub0a0\uc9dc)[[[:space:]]\\:\\;\\-]+)"

.field public static final PREFIX_FOR_TIME_MILLIS:Ljava/lang/String; = "((Time|time|\uc2dc\uac04)[[[:space:]]\\:\\;\\-]+)"

.field public static final REFACTORING_PHONE_NUMBER:Ljava/util/regex/Pattern;

.field public static final SPILT_PATTERN_DATE_TYPE1:Ljava/lang/String; = "[[[:space:]]\\-\\/\\.\ub144\uc6d4\uc77c]+"

.field public static final SPILT_PATTERN_DATE_TYPE2:Ljava/lang/String; = "[[[:space:]]\\,\\.]+"

.field public static final URL:Ljava/util/regex/Pattern;

.field public static globalDateMap:Ljava/util/Map;
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
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->COUNTRY_DATE_STRING:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->COUNTRY_TIME_STRING:Ljava/lang/String;

    const-string/jumbo v0, "([[:space:]](\\+[0-9]+[\\- \\.\u00ad]*)?(\\([0-9]+\\)[\\- \\.\u00ad]*)?([0-9][0-9\\- \\.\u00ad][0-9\\- \\.\u00ad]+[0-9])[[:space:]])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->PHONE_NUMBER:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "((\\+[0-9]+[[[:space:]]?\\-\\.\u00ad]*)?(\\([0-9]+\\)[[[:space:]]?\\-\\.\u00ad]*)?([0-9][0-9[[:space:]]?\\-\\.\u00ad][0-9[[:space:]]?\\-\\.\u00ad]+[0-9]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->PHONE_NUMBER_WEAK:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "((\\+[0-9]+[[[:space:]]?\\-\\.\u00ad]*)?(\\([0-9]+\\)[[[:space:]]?\\-\\.\u00ad]*)?([0-9][0-9[[:space:]]?\\-\\.\u00ad][0-9[[:space:]]?\\-\\.\u00ad]+[0-9]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->REFACTORING_PHONE_NUMBER:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "(\u00ad)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->HYPHEN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "([a-zA-Z0-9\\+\\.\\_\\%\\-\\+\u00ad]{1,256}[[:space:]]?\\@[[:space:]]?[a-zA-Z0-9][a-zA-Z0-9\\-\u00ad]{0,64}([[:space:]]?\\.[[:space:]]?[a-zA-Z0-9][a-zA-Z0-9\\-\u00ad]{0,25})+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->EMAIL_ADDRESS_WEAK:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff\\-]{0,61}[a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]){0,1}\\.)+[a-zA-Z\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]{2,63}|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "((?:(http|https|Http|Https|rtsp|Rtsp|ftp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(?:\\:\\d{1,5})?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(\\/(?:(?:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\;\\/\\?\\:\\@\\&\\=\\#\\~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->URL:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "Jan"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "January"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "Feb"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "February"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "Mar"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "March"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "Apr"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "April"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "May"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "Jun"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "June"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "Jul"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "July"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "Aug"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "August"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "Sep"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "September"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "Octo"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "October"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "Nov"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "November"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "Dec"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string/jumbo v1, "December"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountryDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getCountryTimeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getSmartPatternsForDate(Landroid/content/Context;)Ljava/util/regex/Pattern;
    .locals 2

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->COUNTRY_DATE_STRING:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]]))|(((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]]))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->COUNTRY_DATE_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static getSmartPatternsForTime(Landroid/content/Context;)Ljava/util/regex/Pattern;
    .locals 2

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->COUNTRY_TIME_STRING:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "((((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->COUNTRY_TIME_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method
