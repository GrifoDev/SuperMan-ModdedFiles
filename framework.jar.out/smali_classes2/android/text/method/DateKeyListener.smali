.class public Landroid/text/method/DateKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DateKeyListener.java"


# static fields
.field public static final CHARACTERS:[C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SKELETONS:[Ljava/lang/String;

.field private static final SYMBOLS_TO_IGNORE:Ljava/lang/String; = "yMLd"

.field private static final sInstanceCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Landroid/text/method/DateKeyListener;",
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
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "yMd"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "yM"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Md"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Landroid/text/method/DateKeyListener;->SKELETONS:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DateKeyListener;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DateKeyListener;->sInstanceCache:Ljava/util/HashMap;

    return-void

    nop

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
        0x2fs
        0x2ds
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/method/DateKeyListener;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 4

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/method/DateKeyListener;->SKELETONS:[Ljava/lang/String;

    const-string/jumbo v3, "yMLd"

    invoke-static {v0, p1, v2, v3}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeletons(Ljava/util/Collection;Ljava/util/Locale;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object v2

    iput-object v2, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    sget-object v2, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    iget-object v3, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Landroid/text/method/DateKeyListener;->mNeedsAdvancedInput:Z

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    iput-object v2, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/text/method/DateKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_1
.end method

.method public static getInstance()Landroid/text/method/DateKeyListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/method/DateKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;
    .locals 3

    sget-object v2, Landroid/text/method/DateKeyListener;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/text/method/DateKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/method/DateKeyListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/DateKeyListener;

    invoke-direct {v0, p0}, Landroid/text/method/DateKeyListener;-><init>(Ljava/util/Locale;)V

    sget-object v1, Landroid/text/method/DateKeyListener;->sInstanceCache:Ljava/util/HashMap;

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

    iget-object v0, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    iget-boolean v0, p0, Landroid/text/method/DateKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v0, 0x14

    return v0
.end method
