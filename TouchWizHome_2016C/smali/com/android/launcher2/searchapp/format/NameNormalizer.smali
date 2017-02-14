.class public Lcom/android/launcher2/searchapp/format/NameNormalizer;
.super Ljava/lang/Object;
.source "NameNormalizer.java"


# static fields
.field private static final sComplexityCollator:Ljava/text/RuleBasedCollator;

.field private static final sCompressingCollator:Ljava/text/RuleBasedCollator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "ga_IE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "et_EE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "NameNormalizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ sCompressingCollator set to u k  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/launcher2/searchapp/format/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    :goto_0
    sget-object v0, Lcom/android/launcher2/searchapp/format/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    sget-object v0, Lcom/android/launcher2/searchapp/format/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0, v3}, Ljava/text/Collator;->setDecomposition(I)V

    const-string v0, "ga_IE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "et_EE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/launcher2/searchapp/format/NameNormalizer;->sComplexityCollator:Ljava/text/RuleBasedCollator;

    :goto_1
    sget-object v0, Lcom/android/launcher2/searchapp/format/NameNormalizer;->sComplexityCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0, v3}, Ljava/text/Collator;->setStrength(I)V

    return-void

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/launcher2/searchapp/format/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/launcher2/searchapp/format/NameNormalizer;->sComplexityCollator:Ljava/text/RuleBasedCollator;

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    aget-char v0, v4, v1

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v5, v4

    if-eq v2, v5, :cond_2

    new-instance p0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v2}, Ljava/lang/String;-><init>([CII)V

    :cond_2
    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v2, ""

    sget-object v3, Lcom/android/launcher2/searchapp/format/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    invoke-static {p0}, Lcom/android/launcher2/searchapp/format/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/launcher2/searchapp/format/Hex;->encodeHex([BZ)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method
