.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final COMPATIBILITY_CHARACTERS:[[C

.field private static final DECIMAL:I = 0x2

.field private static final DEFAULT_DECIMAL_POINT_CHARS:Ljava/lang/String; = "."

.field private static final DEFAULT_SIGN_CHARS:Ljava/lang/String; = "-+"

.field private static final EN_DASH:C = '\u2013'

.field private static final HYPHEN_MINUS:C = '-'

.field private static final MINUS_SIGN:C = '\u2212'

.field private static final SIGN:I = 0x1

.field private static final sLocaleCacheLock:Ljava/lang/Object;

.field private static final sLocaleInstanceCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLocaleCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "[",
            "Landroid/text/method/DigitsKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringCacheLock:Ljava/lang/Object;

.field private static final sStringInstanceCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStringCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/method/DigitsKeyListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccepted:[C

.field private final mDecimal:Z

.field private mDecimalPointChars:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private mNeedsAdvancedInput:Z

.field private final mSign:Z

.field private mSignChars:Ljava/lang/String;

.field private final mStringMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [[C

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xc

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xd

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sLocaleCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sStringCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data

    nop

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    const-string/jumbo v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    const-string/jumbo v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    iput-boolean v2, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iput-boolean v2, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iput-boolean v2, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;ZZ)V
    .locals 11

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    const-string/jumbo v9, "."

    iput-object v9, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    const-string/jumbo v9, "-+"

    iput-object v9, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iput-boolean p3, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    iput-object p1, p0, Landroid/text/method/DigitsKeyListener;->mLocale:Ljava/util/Locale;

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_8

    :cond_2
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v8

    if-eqz p2, :cond_6

    invoke-virtual {v8}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/method/DigitsKeyListener;->stripBidiControls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/method/DigitsKeyListener;->stripBidiControls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    :cond_3
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    return-void

    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    const/16 v9, 0x2212

    if-eq v1, v9, :cond_5

    const/16 v9, 0x2013

    if-ne v1, v9, :cond_6

    :cond_5
    const/16 v9, 0x2d

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    :cond_6
    if-eqz p3, :cond_8

    invoke-virtual {v8}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_7

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    return-void

    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    :cond_8
    invoke-static {v0}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object v9

    iput-object v9, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->calculateNeedForAdvancedInput()V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method private calculateNeedForAdvancedInput()V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-boolean v3, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    :cond_0
    or-int v0, v1, v2

    sget-object v1, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static getInstance()Landroid/text/method/DigitsKeyListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .locals 3

    sget-object v2, Landroid/text/method/DigitsKeyListener;->sStringCacheLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/method/DigitsKeyListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v0, p0}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/text/method/DigitsKeyListener;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/text/method/DigitsKeyListener;)Landroid/text/method/DigitsKeyListener;
    .locals 2

    iget-boolean v0, p1, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-boolean v0, p1, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p1, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    invoke-static {p0, v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v2, 0x2

    :cond_0
    or-int v1, v3, v2

    sget-object v3, Landroid/text/method/DigitsKeyListener;->sLocaleCacheLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/DigitsKeyListener;

    if-eqz v0, :cond_2

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v2, 0x4

    :try_start_1
    new-array v0, v2, [Landroid/text/method/DigitsKeyListener;

    sget-object v2, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method private isDecimalPointChar(C)Z
    .locals 2

    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSignChar(C)Z
    .locals 2

    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setToCompat()V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v1, "."

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    const-string/jumbo v1, "-+"

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-boolean v3, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    :goto_1
    or-int v0, v1, v3

    sget-object v1, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    iput-boolean v2, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1
.end method

.method private static stripBidiControls(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, ""

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    return-object v2
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v4

    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v8, :cond_0

    return-object v4

    :cond_0
    if-eqz v4, :cond_1

    move-object p1, v4

    const/4 p2, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_1
    const/4 v5, -0x1

    const/4 v1, -0x1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p5, :cond_4

    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v8

    if-eqz v8, :cond_3

    move v5, v3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v3

    goto :goto_1

    :cond_4
    move/from16 v3, p6

    :goto_2
    if-ge v3, v2, :cond_7

    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, ""

    return-object v8

    :cond_5
    invoke-direct {p0, v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v8

    if-eqz v8, :cond_6

    move v1, v3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    add-int/lit8 v3, p3, -0x1

    :goto_3
    if-lt v3, p2, :cond_11

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v6, 0x0

    invoke-direct {p0, v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v8

    if-eqz v8, :cond_c

    if-ne v3, p2, :cond_8

    if-eqz p5, :cond_a

    :cond_8
    const/4 v6, 0x1

    :cond_9
    :goto_4
    if-eqz v6, :cond_10

    add-int/lit8 v8, p2, 0x1

    if-ne p3, v8, :cond_e

    const-string/jumbo v8, ""

    return-object v8

    :cond_a
    if-ltz v5, :cond_b

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    move v5, v3

    goto :goto_4

    :cond_c
    invoke-direct {p0, v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v8

    if-eqz v8, :cond_9

    if-ltz v1, :cond_d

    const/4 v6, 0x1

    goto :goto_4

    :cond_d
    move v1, v3

    goto :goto_4

    :cond_e
    if-nez v7, :cond_f

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    :cond_f
    sub-int v8, v3, p2

    add-int/lit8 v9, v3, 0x1

    sub-int/2addr v9, p2

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_10
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_11
    if-eqz v7, :cond_12

    return-object v7

    :cond_12
    if-eqz v4, :cond_13

    return-object v4

    :cond_13
    const/4 v8, 0x0

    return-object v8
.end method

.method protected getAcceptedChars()[C
    .locals 1

    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 2

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v1, :cond_2

    const/16 v0, 0x1002

    :cond_2
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x2000

    goto :goto_0
.end method
