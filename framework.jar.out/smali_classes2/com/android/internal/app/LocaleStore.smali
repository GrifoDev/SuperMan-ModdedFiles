.class public Lcom/android/internal/app/LocaleStore;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo;
    }
.end annotation


# static fields
.field private static final FULLNAME_SERBIAN:Ljava/lang/String; = "Srpski"

.field private static final LANGUAGE_NAME_SERBIAN:Ljava/lang/String; = "sr"

.field private static final LANGUAGE_XML:Ljava/lang/String; = "/system/csc/language.xml"

.field private static final LANGUAGE_XML_OMC_V1_DIR:Ljava/lang/String; = "/data/omc/etc"

.field private static final TAG:Ljava/lang/String; = "LocaleStore"

.field private static final TAG_DISPLAY:Ljava/lang/String; = "Display"

.field private static final TAG_LANGUAGE:Ljava/lang/String; = "LanguageSet"

.field private static final TAG_NONSUGGESTED:Ljava/lang/String; = "NonSuggested"

.field private static final TAG_NOT_DISPLAY:Ljava/lang/String; = "NonDisplay"

.field private static final TAG_SUGGESTED:Ljava/lang/String; = "Suggested"

.field private static final XML_LOCALES_INDEX_NO_SUGGESTED:I = 0x3

.field private static final XML_LOCALES_INDEX_SUGGESTED:I = 0x2

.field private static final XML_LOCALES_INDEX_SUPPORTED:I = 0x0

.field private static final XML_LOCALES_INDEX_UNSUPPORTED:I = 0x1

.field private static final XML_LOCALES_SIZE:I = 0x4

.field private static sCountryMode:Z

.field private static final sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sPrevDefaultLocaleList:Landroid/os/LocaleList;

.field private static final sPriorityLocale:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/android/internal/app/LocaleStore;->isChina()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "zh"

    :goto_0
    sput-object v0, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSuggestedLocalesForRegion(Ljava/util/Locale;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;Z)V
    .locals 15

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const-string/jumbo v7, ""

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->getSpecificCustomerSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_0

    const/4 v10, 0x0

    aget-object v8, p1, v10

    const/4 v10, 0x1

    aget-object v9, p1, v10

    const/4 v10, 0x2

    aget-object v7, p1, v10

    :cond_0
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    const/4 v10, 0x0

    array-length v11, v0

    :goto_1
    if-ge v10, v11, :cond_a

    aget-object v3, v0, v10

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v10, Ljava/util/IllformedLocaleException;

    const-string/jumbo v11, "Bad locale entry in locale_config.xml"

    invoke-direct {v10, v11}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v12, 0x0

    invoke-direct {v2, v3, v12}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_7

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v12

    or-int/lit8 v12, v12, 0x1

    invoke-static {v2, v12}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    :cond_6
    sget-object v12, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    sget-object v12, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    sget-object v12, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v13, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    invoke-virtual {v12, v5, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v12

    or-int/lit8 v12, v12, 0x1

    invoke-static {v2, v12}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v12

    or-int/lit8 v12, v12, 0x8

    invoke-static {v2, v12}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    :cond_8
    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_9
    const-string/jumbo v12, "LocaleStore"

    const-string/jumbo v13, "put null key to sLocaleCache #2"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    return-void
.end method

.method public static fillCache(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore;->fillCacheManaged(Landroid/content/Context;Z)V

    return-void
.end method

.method public static fillCacheManaged(Landroid/content/Context;Z)V
    .locals 18

    sget-object v14, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    return-void

    :cond_0
    const/4 v14, 0x4

    new-array v13, v14, [Ljava/lang/String;

    const-string/jumbo v4, "/system/csc/language.xml"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "/data/omc/etc/language.xml"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "persist.sys.omc_path"

    const-string/jumbo v16, "/data/omc/etc"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/language.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v4, v12

    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/android/internal/app/LocaleStore;->getLocaleListFromXML(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    const/4 v14, 0x3

    aget-object v10, v13, v14

    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/internal/app/LocaleStore;->buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;Z)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/internal/app/LocaleStore;->buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;Z)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    array-length v15, v8

    :goto_1
    if-ge v14, v15, :cond_9

    aget-object v7, v8, v14

    new-instance v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v5, v7, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    const/4 v1, 0x0

    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    invoke-static {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "/data/omc/etc/language.xml"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v4, "/data/omc/etc/language.xml"

    goto/16 :goto_0

    :cond_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    goto :goto_2

    :cond_8
    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v16

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v16

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_b

    sget-object v14, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v5, v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    goto :goto_4

    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/app/LocaleStore;->addSuggestedLocalesForRegion(Ljava/util/Locale;)V

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v14

    sput-object v14, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    :cond_b
    return-void
.end method

.method private static findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 10

    const-string/jumbo v5, ""

    const/4 v7, 0x0

    array-length v8, p0

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v6, p0, v7

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object p1, v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, p0, v7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    :cond_3
    return-object v5

    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :cond_5
    const-string/jumbo v7, "\\s"

    const-string/jumbo v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "_"

    const-string/jumbo v8, "-"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getAllLocaleInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/android/internal/app/LocaleStore;->fillCacheManaged(Landroid/content/Context;Z)V

    new-instance v6, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v8, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v8

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v8, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/app/LocaleStore;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->trimToSize()V

    sget-object v8, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    sget-object v8, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/app/LocaleStore;->isConfigLocale(Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_4
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v6
.end method

.method private static getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)I"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get0(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public static getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    if-eqz p2, :cond_1

    move v6, v7

    :goto_0
    sput-boolean v6, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    if-nez p2, :cond_2

    const/4 v3, 0x0

    :goto_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sget-object v6, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {p1, v1, p3}, Lcom/android/internal/app/LocaleStore;->getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-static {v1, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v6, 0x4

    invoke-static {v1, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v6

    or-int/lit8 v6, v6, 0x4

    invoke-static {v4, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    :cond_5
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v5
.end method

.method public static getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "LocaleStore"

    const-string/jumbo v3, "put null key to sLocaleCache #3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getLocaleListFromXML(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14

    const/4 v12, 0x4

    new-array v9, v12, [Ljava/lang/String;

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :cond_0
    :goto_0
    if-nez v10, :cond_1

    const/4 v12, 0x0

    return-object v12

    :catch_0
    move-exception v3

    const-string/jumbo v12, "LocaleStore"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v5

    const-string/jumbo v12, "LocaleStore"

    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v4

    const-string/jumbo v12, "LocaleStore"

    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v12, 0x2

    new-array v1, v12, [Ljava/lang/String;

    const-string/jumbo v12, "LanguageSet"

    const/4 v13, 0x0

    aput-object v12, v1, v13

    const-string/jumbo v12, "Display"

    const/4 v13, 0x1

    aput-object v12, v1, v13

    const/4 v12, 0x2

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v12, "LanguageSet"

    const/4 v13, 0x0

    aput-object v12, v7, v13

    const-string/jumbo v12, "NonDisplay"

    const/4 v13, 0x1

    aput-object v12, v7, v13

    const/4 v12, 0x2

    new-array v11, v12, [Ljava/lang/String;

    const-string/jumbo v12, "LanguageSet"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "Suggested"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x2

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v12, "LanguageSet"

    const/4 v13, 0x0

    aput-object v12, v8, v13

    const-string/jumbo v12, "NonSuggested"

    const/4 v13, 0x1

    aput-object v12, v8, v13

    invoke-static {v1, v10}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v9, v13

    invoke-static {v7, v10}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v9, v13

    invoke-static {v11, v10}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v9, v13

    invoke-static {v8, v10}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v9, v13

    return-object v9
.end method

.method private static getSimCountries(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method

.method private static isChina()Z
    .locals 2

    const-string/jumbo v0, "CHINA"

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isConfigLocale(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateSimCountries(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    goto :goto_0

    :cond_1
    return-void
.end method
