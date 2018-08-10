.class public Landroid/text/method/TimeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "TimeKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static final SKELETON_12HOUR:Ljava/lang/String; = "hms"

.field private static final SKELETON_24HOUR:Ljava/lang/String; = "Hms"

.field private static final SYMBOLS_TO_IGNORE:Ljava/lang/String; = "ahHKkms"

.field private static final sInstanceCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Landroid/text/method/TimeKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mCharacters:[C

.field private final mNeedsAdvancedInput:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/method/TimeKeyListener;->CHARACTERS:[C

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/TimeKeyListener;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/TimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

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
        0x61s
        0x6ds
        0x70s
        0x3as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/method/TimeKeyListener;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addAmPmChars(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "hms"

    const-string/jumbo v3, "ahHKkms"

    invoke-static {v0, p1, v2, v3}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Hms"

    const-string/jumbo v3, "ahHKkms"

    invoke-static {v0, p1, v2, v3}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object v2

    iput-object v2, p0, Landroid/text/method/TimeKeyListener;->mCharacters:[C

    if-eqz p1, :cond_1

    const-string/jumbo v2, "en"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Landroid/text/method/TimeKeyListener;->mNeedsAdvancedInput:Z

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/text/method/TimeKeyListener;->CHARACTERS:[C

    iget-object v3, p0, Landroid/text/method/TimeKeyListener;->mCharacters:[C

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Landroid/text/method/TimeKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/text/method/TimeKeyListener;->CHARACTERS:[C

    iput-object v2, p0, Landroid/text/method/TimeKeyListener;->mCharacters:[C

    iput-boolean v4, p0, Landroid/text/method/TimeKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_1
.end method

.method public static getInstance()Landroid/text/method/TimeKeyListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/method/TimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/TimeKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/text/method/TimeKeyListener;
    .locals 3

    sget-object v2, Landroid/text/method/TimeKeyListener;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/text/method/TimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/method/TimeKeyListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/TimeKeyListener;

    invoke-direct {v0, p0}, Landroid/text/method/TimeKeyListener;-><init>(Ljava/util/Locale;)V

    sget-object v1, Landroid/text/method/TimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

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


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    iget-object v0, p0, Landroid/text/method/TimeKeyListener;->mCharacters:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    iget-boolean v0, p0, Landroid/text/method/TimeKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v0, 0x24

    return v0
.end method
