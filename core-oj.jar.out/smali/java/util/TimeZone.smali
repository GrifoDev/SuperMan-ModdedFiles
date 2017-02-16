.class public abstract Ljava/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TimeZone$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field private static final GMT:Ljava/util/TimeZone;

.field public static final LONG:I = 0x1

.field static final NO_TIMEZONE:Ljava/util/TimeZone; = null

.field public static final SHORT:I = 0x0

.field private static final UTC:Ljava/util/TimeZone;

.field private static volatile defaultTimeZone:Ljava/util/TimeZone; = null

.field static final serialVersionUID:J = 0x31b3e9f57744aca1L


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string/jumbo v1, "GMT"

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    .line 171
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljava/util/TimeZone;->UTC:Ljava/util/TimeZone;

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendNumber(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "count"    # I
    .param p2, "value"    # I

    .prologue
    .line 448
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "string":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    if-ge v0, v2, :cond_0

    .line 450
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    return-void
.end method

.method public static createGmtOffsetString(ZZI)Ljava/lang/String;
    .locals 5
    .param p0, "includeGmt"    # Z
    .param p1, "includeMinuteSeparator"    # Z
    .param p2, "offsetMillis"    # I

    .prologue
    const/4 v4, 0x2

    .line 428
    const v3, 0xea60

    div-int v1, p2, v3

    .line 429
    .local v1, "offsetMinutes":I
    const/16 v2, 0x2b

    .line 430
    .local v2, "sign":C
    if-gez v1, :cond_0

    .line 431
    const/16 v2, 0x2d

    .line 432
    neg-int v1, v1

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 435
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 436
    const-string/jumbo v3, "GMT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    div-int/lit8 v3, v1, 0x3c

    invoke-static {v0, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 440
    if-eqz p1, :cond_2

    .line 441
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    :cond_2
    rem-int/lit8 v3, v1, 0x3c

    invoke-static {v0, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getAvailableIDs()[Ljava/lang/String;
    .locals 2

    .prologue
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 633
    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/util/ZoneInfoDB$TzData;->getAvailableIDs()[Ljava/lang/String;
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

.method public static declared-synchronized getAvailableIDs(I)[Ljava/lang/String;
    .locals 2
    .param p0, "rawOffset"    # I

    .prologue
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 625
    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibcore/util/ZoneInfoDB$TzData;->getAvailableIDs(I)[Ljava/lang/String;
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

.method private static getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 13
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x3

    .line 584
    sget-object v7, Ljava/util/TimeZone$NoImagePreloadHolder;->CUSTOM_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 585
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_0

    .line 586
    return-object v8

    .line 590
    :cond_0
    const/4 v4, 0x0

    .line 592
    .local v4, "minute":I
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 593
    .local v1, "hour":I
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 594
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 600
    :cond_1
    if-ltz v1, :cond_2

    const/16 v7, 0x17

    if-le v1, v7, :cond_3

    .line 601
    :cond_2
    return-object v8

    .line 596
    .end local v1    # "hour":I
    :catch_0
    move-exception v2

    .line 597
    .local v2, "impossible":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 600
    .end local v2    # "impossible":Ljava/lang/NumberFormatException;
    .restart local v1    # "hour":I
    :cond_3
    if-ltz v4, :cond_2

    const/16 v7, 0x3b

    if-gt v4, v7, :cond_2

    .line 604
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 605
    .local v6, "sign":C
    const v7, 0x36ee80

    mul-int/2addr v7, v1

    const v8, 0xea60

    mul-int/2addr v8, v4

    add-int v5, v7, v8

    .line 606
    .local v5, "raw":I
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_4

    .line 607
    neg-int v5, v5

    .line 610
    :cond_4
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v8, "GMT%c%02d:%02d"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "cleanId":Ljava/lang/String;
    new-instance v7, Ljava/util/SimpleTimeZone;

    invoke-direct {v7, v5, v0}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v7
.end method

.method public static getDefault()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 656
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    return-object v0
.end method

.method static declared-synchronized getDefaultRef()Ljava/util/TimeZone;
    .locals 5

    .prologue
    const-class v4, Ljava/util/TimeZone;

    monitor-enter v4

    .line 664
    :try_start_0
    sget-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    if-nez v3, :cond_3

    .line 665
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getInstance()Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    move-result-object v1

    .line 666
    .local v1, "tzGetter":Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getId()Ljava/lang/String;

    move-result-object v2

    .line 667
    :goto_0
    if-eqz v2, :cond_0

    .line 668
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 670
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 673
    :cond_1
    :try_start_1
    const-string/jumbo v3, "/etc/timezone"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 680
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    sput-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    .line 682
    :cond_3
    sget-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-object v3

    .line 666
    :cond_4
    const/4 v2, 0x0

    .local v2, "zoneName":Ljava/lang/String;
    goto :goto_0

    .line 674
    .end local v2    # "zoneName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 677
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "GMT"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v2, "zoneName":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "zoneName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static native getSystemGMTOffsetID()Ljava/lang/String;
.end method

.method private static native getSystemTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static declared-synchronized getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const-class v3, Ljava/util/TimeZone;

    monitor-enter v3

    .line 550
    if-nez p0, :cond_0

    .line 551
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "id == null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 555
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 556
    const-string/jumbo v2, "GMT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 557
    sget-object v2, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2

    .line 559
    :cond_1
    :try_start_2
    const-string/jumbo v2, "UTC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    sget-object v2, Ljava/util/TimeZone;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    .line 565
    :cond_2
    const/4 v1, 0x0

    .line 567
    .local v1, "zone":Ljava/util/TimeZone;
    :try_start_3
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v2

    invoke-virtual {v2, p0}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 572
    .end local v1    # "zone":Ljava/util/TimeZone;
    :goto_0
    if-nez v1, :cond_3

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_3

    const-string/jumbo v2, "GMT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 573
    invoke-static {p0}, Ljava/util/TimeZone;->getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 577
    :cond_3
    if-eqz v1, :cond_4

    :goto_1
    monitor-exit v3

    return-object v1

    :cond_4
    :try_start_5
    sget-object v2, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, v2

    goto :goto_1

    .line 568
    .restart local v1    # "zone":Ljava/util/TimeZone;
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static hasPermission()Z
    .locals 6

    .prologue
    .line 686
    const/4 v1, 0x1

    .line 687
    .local v1, "hasPermission":Z
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 688
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_0

    .line 690
    :try_start_0
    new-instance v3, Ljava/util/PropertyPermission;

    .line 691
    const-string/jumbo v4, "user.timezone"

    const-string/jumbo v5, "write"

    .line 690
    invoke-direct {v3, v4, v5}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :cond_0
    :goto_0
    return v1

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized setDefault(Ljava/util/TimeZone;)V
    .locals 3
    .param p0, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v0, 0x0

    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 710
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->hasPermission()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 711
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    :cond_0
    sput-object v0, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    .line 712
    invoke-static {}, Landroid/icu/util/TimeZone;->clearCachedDefault()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 708
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 738
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    .line 739
    .local v1, "other":Ljava/util/TimeZone;
    iget-object v2, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    iput-object v2, v1, Ljava/util/TimeZone;->ID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    return-object v1

    .line 741
    .end local v1    # "other":Ljava/util/TimeZone;
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public getDSTSavings()I
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    const v0, 0x36ee80

    return v0

    .line 485
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 323
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 343
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(ZI)Ljava/lang/String;
    .locals 1
    .param p1, "daylight"    # Z
    .param p2, "style"    # I

    .prologue
    .line 372
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 371
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "daylightTime"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x1

    .line 386
    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    .line 387
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad style: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 390
    :cond_0
    invoke-static {p3}, Llibcore/icu/TimeZoneNames;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "zoneStrings":[[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1, p2}, Llibcore/icu/TimeZoneNames;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 393
    return-object v1

    .line 406
    :cond_1
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 407
    .local v0, "offsetMillis":I
    if-eqz p1, :cond_2

    .line 408
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    add-int/2addr v0, v3

    .line 410
    :cond_2
    invoke-static {v4, v4, v0}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 217
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method getOffsets(J[I)I
    .locals 3
    .param p1, "date"    # J
    .param p3, "offsets"    # [I

    .prologue
    .line 240
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 241
    .local v1, "rawoffset":I
    const/4 v0, 0x0

    .line 242
    .local v0, "dstoffset":I
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    .line 245
    :cond_0
    if-eqz p3, :cond_1

    .line 246
    const/4 v2, 0x0

    aput v1, p3, v2

    .line 247
    const/4 v2, 0x1

    aput v0, p3, v2

    .line 249
    :cond_1
    add-int v2, v1, v0

    return v2
.end method

.method public abstract getRawOffset()I
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 3
    .param p1, "other"    # Ljava/util/TimeZone;

    .prologue
    const/4 v0, 0x0

    .line 726
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 727
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v1

    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 726
    :cond_0
    return v0
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public observesDaylightTime()Z
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 303
    :cond_0
    iput-object p1, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public abstract setRawOffset(I)V
.end method

.method public abstract useDaylightTime()Z
.end method
