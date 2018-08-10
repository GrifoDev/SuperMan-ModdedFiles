.class public Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;
.super Ljava/lang/Object;
.source "NameNormalizer.java"


# static fields
.field private static mAbnormalCollationLocale:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

.field private static sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

.field private static sCollatorLocale:Ljava/util/Locale;

.field private static final sCollatorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureCollators()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->sCollatorLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    sput-object v1, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->sCollatorLocale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->getCollatorLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    check-cast v2, Ljava/text/RuleBasedCollator;

    sput-object v2, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    sget-object v2, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    sget-object v2, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v2, v4}, Ljava/text/RuleBasedCollator;->setDecomposition(I)V

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    check-cast v2, Ljava/text/RuleBasedCollator;

    sput-object v2, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

    sget-object v2, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v2, v4}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    return-void
.end method

.method static getCollatorLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 4

    move-object v0, p0

    invoke-static {}, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->initAbnormalCollationLocale()V

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "NameNormalizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@@ collator is selected from( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ) to U S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    :cond_1
    return-object v0
.end method

.method static getCompressingCollator()Ljava/text/RuleBasedCollator;
    .locals 2

    sget-object v1, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->ensureCollators()V

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initAbnormalCollationLocale()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "ga_IE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "et_EE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "mk_MK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "ms_MY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "is_IS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "kk_KZ"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "uz_UZ"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "gl_ES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "eu_ES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "eu_FR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "km_KH"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "my_MM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "lo_LA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "kn_IN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "ml_IN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "ne_IN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "ka_GE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "hy_AM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "pa_IN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "gu_IN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "te_IN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->mAbnormalCollationLocale:Ljava/util/List;

    const-string/jumbo v1, "si_IN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    aget-char v0, v4, v1

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x20

    if-ne v0, v6, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ko"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    move v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    array-length v6, v4

    if-eq v2, v6, :cond_3

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v6

    :cond_3
    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-object p0

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->getCompressingCollator()Ljava/text/RuleBasedCollator;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    return-object v2

    :cond_3
    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/settings/sfinderconnect/Hex;->encodeHex([BZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
