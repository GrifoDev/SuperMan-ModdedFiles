.class public Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;
.super Ljava/lang/Object;
.source "SearchAppLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseTWUtils;,
        Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseHKUtils;,
        Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SimplifiedChineseUtils;,
        Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;
    }
.end annotation


# static fields
.field private static final AOMEN_LOCALE:Ljava/lang/String; = "zh_MO_#Hant"

.field private static final CHINA_FORMER_LOCALE:Ljava/lang/String; = "zh_CN"

.field private static final CHINA_HK_LOCALE:Ljava/lang/String; = "zh_HK_#Hans"

.field private static final CHINA_LOCALE:Ljava/lang/String; = "zh_CN_#Hans"

.field private static final CHINA_MO_LOCALE:Ljava/lang/String; = "zh_MO_#Hans"

.field private static final CHINA_SG_LOCALE:Ljava/lang/String; = "zh_SG_#Hans"

.field private static final ENGLISH_LOCALE:Ljava/lang/String; = "en_US"

.field private static final HONGKONG_FORMER_LOCALE:Ljava/lang/String; = "zh_HK"

.field private static final HONGKONG_LOCALE:Ljava/lang/String; = "zh_HK_#Hant"

.field private static final MAX_LOOKUP_NAME_LENGTH:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "SearchAppLocaleUtils"

.field private static final TAIWAN_FORMER_LOCALE:Ljava/lang/String; = "zh_TW"

.field private static final TAIWAN_LOCALE:Ljava/lang/String; = "zh_TW_#Hant"

.field private static isChineseLanguage:Z

.field private static mBaseUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;

.field private static mCHNUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SimplifiedChineseUtils;

.field private static mHKUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseHKUtils;

.field private static mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

.field private static mTWUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseTWUtils;

.field private static mUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;

.field private static sSingleton:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isChineseLanguage:Z

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseTWUtils;

    invoke-direct {v0}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseTWUtils;-><init>()V

    sput-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mTWUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseTWUtils;

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseHKUtils;

    invoke-direct {v0}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseHKUtils;-><init>()V

    sput-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mHKUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseHKUtils;

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SimplifiedChineseUtils;

    invoke-direct {v0}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SimplifiedChineseUtils;-><init>()V

    sput-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mCHNUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SimplifiedChineseUtils;

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;

    invoke-direct {v0}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;-><init>()V

    sput-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mBaseUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;

    return-void
.end method

.method private constructor <init>(Lcom/android/launcher2/searchapp/LocaleSet;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/launcher2/searchapp/LocaleSet;->getDefault()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    :goto_0
    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getUtils()V

    return-void

    :cond_0
    sput-object p1, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/android/launcher2/searchapp/LocaleSet;
    .locals 1

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;
    .locals 3

    const-class v1, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->sSingleton:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    invoke-static {}, Lcom/android/launcher2/searchapp/LocaleSet;->getDefault()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;-><init>(Lcom/android/launcher2/searchapp/LocaleSet;Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->sSingleton:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    :goto_0
    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->sSingleton:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getUtils()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getUtils()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher2/searchapp/LocaleSet;->getDefault()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_TW_#Hant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sput-boolean v2, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isChineseLanguage:Z

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mTWUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseTWUtils;

    sput-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK_#Hant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sput-boolean v2, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isChineseLanguage:Z

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mHKUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseHKUtils;

    sput-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN_#Hans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en_US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK_#Hans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_MO_#Hans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_SG_#Hans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mLocales:Lcom/android/launcher2/searchapp/LocaleSet;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_MO_#Hant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sput-boolean v2, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isChineseLanguage:Z

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mCHNUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SimplifiedChineseUtils;

    sput-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isChineseLanguage:Z

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mBaseUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;

    sput-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;

    goto/16 :goto_0
.end method

.method public static isChineseUtils()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isChineseLanguage:Z

    return v0
.end method

.method public static isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getConsistKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;->getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->mUtils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChineseHK()Z
    .locals 2

    invoke-static {}, Lcom/android/launcher2/searchapp/LocaleSet;->getDefault()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK_#Hant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/searchapp/LocaleSet;->getDefault()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeKeyString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkIsChinaModel()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isChineseUtils()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v2, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const/16 v6, 0xa0

    const/4 v5, 0x0

    if-nez p1, :cond_1

    const-string v1, ""

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkIsChinaModel()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isChineseUtils()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v3, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    const-string v3, "vi"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "SearchAppLocaleUtils"

    const-string v4, "get Vietnamese language"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/launcher2/searchapp/Utilities;->convertVietnamese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/launcher2/searchapp/Utilities;->getChosung(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string v3, "SearchAppLocaleUtils"

    const-string v4, "cannot make sectionString"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
