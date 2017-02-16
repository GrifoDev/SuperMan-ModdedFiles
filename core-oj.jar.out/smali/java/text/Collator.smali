.class public abstract Ljava/text/Collator;
.super Ljava/lang/Object;
.source "Collator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final CANONICAL_DECOMPOSITION:I = 0x1

.field public static final FULL_DECOMPOSITION:I = 0x2

.field public static final IDENTICAL:I = 0x3

.field public static final NO_DECOMPOSITION:I = 0x0

.field public static final PRIMARY:I = 0x0

.field public static final SECONDARY:I = 0x1

.field public static final TERTIARY:I = 0x2


# instance fields
.field icuColl:Landroid/icu/text/Collator;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/RuleBasedCollator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v0

    iput-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    .line 230
    return-void
.end method

.method constructor <init>(Landroid/icu/text/Collator;)V
    .locals 0
    .param p1, "icuColl"    # Landroid/icu/text/Collator;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    .line 219
    return-void
.end method

.method private decompositionMode_ICU_Java(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 456
    move v0, p1

    .line 457
    .local v0, "javaMode":I
    packed-switch p1, :pswitch_data_0

    .line 465
    :goto_0
    return v0

    .line 459
    :pswitch_0
    const/4 v0, 0x0

    .line 460
    goto :goto_0

    .line 462
    :pswitch_1
    const/4 v0, 0x1

    .line 463
    goto :goto_0

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private decompositionMode_Java_ICU(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 446
    packed-switch p1, :pswitch_data_0

    .line 452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :pswitch_0
    const/16 v0, 0x11

    return v0

    .line 450
    :pswitch_1
    const/16 v0, 0x10

    return v0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .prologue
    const-class v0, Ljava/text/Collator;

    monitor-enter v0

    .line 275
    :try_start_0
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCollatorLocales()[Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Ljava/text/Collator;
    .locals 2

    .prologue
    const-class v1, Ljava/text/Collator;

    monitor-enter v1

    .line 242
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/Locale;)Ljava/text/Collator;
    .locals 3
    .param p0, "desiredLocale"    # Ljava/util/Locale;

    .prologue
    const-class v1, Ljava/text/Collator;

    monitor-enter v1

    .line 254
    if-nez p0, :cond_0

    .line 255
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "locale == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 257
    :cond_0
    :try_start_1
    new-instance v2, Ljava/text/RuleBasedCollator;

    .line 258
    invoke-static {p0}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v0

    .line 257
    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v2, v0}, Ljava/text/RuleBasedCollator;-><init>(Landroid/icu/text/RuleBasedCollator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 288
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Collator;

    .line 289
    .local v0, "clone":Ljava/text/Collator;
    iget-object v2, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v2}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/Collator;

    iput-object v2, v0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    return-object v0

    .line 291
    .end local v0    # "clone":Ljava/text/Collator;
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 334
    check-cast p1, Ljava/lang/String;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 476
    if-ne p0, p1, :cond_0

    return v1

    .line 477
    :cond_0
    if-nez p1, :cond_1

    return v2

    .line 478
    :cond_1
    invoke-virtual {p0}, Ljava/text/Collator;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    move-object v0, p1

    .line 479
    check-cast v0, Ljava/text/Collator;

    .line 480
    .local v0, "other":Ljava/text/Collator;
    iget-object v3, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    if-nez v3, :cond_4

    iget-object v3, v0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    iget-object v2, v0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v1, v2}, Landroid/icu/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 362
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public abstract getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
.end method

.method public declared-synchronized getDecomposition()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 426
    :try_start_0
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0}, Landroid/icu/text/Collator;->getDecomposition()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/Collator;->decompositionMode_ICU_Java(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStrength()I
    .locals 2

    .prologue
    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v1, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v1}, Landroid/icu/text/Collator;->getStrength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 380
    .local v0, "value":I
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .end local v0    # "value":I
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public abstract hashCode()I
.end method

.method public declared-synchronized setDecomposition(I)V
    .locals 2
    .param p1, "decompositionMode"    # I

    .prologue
    monitor-enter p0

    .line 442
    :try_start_0
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-direct {p0, p1}, Ljava/text/Collator;->decompositionMode_Java_ICU(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/Collator;->setDecomposition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 441
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStrength(I)V
    .locals 1
    .param p1, "newStrength"    # I

    .prologue
    monitor-enter p0

    .line 399
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 400
    const/16 p1, 0xf

    .line 402
    :cond_0
    :try_start_0
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0, p1}, Landroid/icu/text/Collator;->setStrength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 397
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
