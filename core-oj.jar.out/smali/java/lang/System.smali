.class public final Ljava/lang/System;
.super Ljava/lang/Object;
.source "System.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    }
.end annotation


# static fields
.field private static final ARRAYCOPY_SHORT_BOOLEAN_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_BYTE_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_CHAR_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_DOUBLE_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_FLOAT_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_INT_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_LONG_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_SHORT_ARRAY_THRESHOLD:I = 0x20

.field private static final LOCK:Ljava/lang/Object;

.field private static cons:Ljava/io/Console;

.field public static final err:Ljava/io/PrintStream;

.field public static final in:Ljava/io/InputStream;

.field private static justRanFinalization:Z

.field private static lineSeparator:Ljava/lang/String;

.field public static final out:Ljava/io/PrintStream;

.field private static props:Ljava/util/Properties;

.field private static runGC:Z

.field private static unchangeableProps:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 111
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    .line 194
    const/4 v3, 0x0

    sput-object v3, Ljava/lang/System;->cons:Ljava/io/Console;

    .line 1588
    invoke-static {}, Ljava/lang/System;->initUnchangeableSystemProperties()Ljava/util/Properties;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    .line 1589
    invoke-static {}, Ljava/lang/System;->initProperties()Ljava/util/Properties;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    .line 1590
    invoke-static {}, Ljava/lang/System;->addLegacyLocaleSystemProperties()V

    .line 1591
    invoke-static {}, Lsun/misc/Version;->initSystemProperties()V

    .line 1596
    sget-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string/jumbo v4, "line.separator"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    .line 1598
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v3, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1599
    .local v1, "fdIn":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1600
    .local v2, "fdOut":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v3, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1602
    .local v0, "fdErr":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 1603
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1604
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 1610
    invoke-static {}, Lsun/misc/VM;->initializeOSEnvironment()V

    .line 1616
    invoke-static {}, Lsun/misc/VM;->booted()V

    .line 54
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLegacyLocaleSystemProperties()V
    .locals 6

    .prologue
    .line 1051
    const-string/jumbo v4, "user.locale"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1052
    .local v2, "locale":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1053
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 1054
    .local v0, "l":Ljava/util/Locale;
    const-string/jumbo v4, "user.language"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string/jumbo v4, "user.region"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string/jumbo v4, "user.variant"

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    .end local v0    # "l":Ljava/util/Locale;
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    const-string/jumbo v4, "user.language"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, "language":Ljava/lang/String;
    const-string/jumbo v4, "user.region"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1065
    .local v3, "region":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1066
    const-string/jumbo v4, "user.language"

    const-string/jumbo v5, "en"

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1070
    const-string/jumbo v4, "user.region"

    const-string/jumbo v5, "US"

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static native arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
.end method

.method public static arraycopy([BI[BII)V
    .locals 4
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 503
    if-nez p0, :cond_0

    .line 504
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_0
    if-nez p2, :cond_1

    .line 507
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    .line 511
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 513
    const-string/jumbo v3, " dst.length="

    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 513
    array-length v3, p2

    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 513
    const-string/jumbo v3, " dstPos="

    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 513
    const-string/jumbo v3, " length="

    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 511
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :cond_3
    if-ltz p4, :cond_2

    .line 510
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    .line 515
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 517
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 521
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 522
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 521
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 526
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 527
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 532
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyByteUnchecked([BI[BII)V

    .line 502
    :cond_6
    return-void
.end method

.method public static arraycopy([CI[CII)V
    .locals 4
    .param p0, "src"    # [C
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 450
    if-nez p0, :cond_0

    .line 451
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_0
    if-nez p2, :cond_1

    .line 454
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    .line 458
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    const-string/jumbo v3, " dst.length="

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    array-length v3, p2

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    const-string/jumbo v3, " dstPos="

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    const-string/jumbo v3, " length="

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_3
    if-ltz p4, :cond_2

    .line 457
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    .line 462
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 464
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 468
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 469
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    .line 468
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 473
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 474
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyCharUnchecked([CI[CII)V

    .line 449
    :cond_6
    return-void
.end method

.method public static arraycopy([DI[DII)V
    .locals 4
    .param p0, "src"    # [D
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 768
    if-nez p0, :cond_0

    .line 769
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 771
    :cond_0
    if-nez p2, :cond_1

    .line 772
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 774
    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    .line 776
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 778
    const-string/jumbo v3, " dst.length="

    .line 777
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 778
    array-length v3, p2

    .line 777
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 778
    const-string/jumbo v3, " dstPos="

    .line 777
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 778
    const-string/jumbo v3, " length="

    .line 777
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 776
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 774
    :cond_3
    if-ltz p4, :cond_2

    .line 775
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    .line 780
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 782
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 786
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 787
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 786
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 791
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 792
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 797
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyDoubleUnchecked([DI[DII)V

    .line 767
    :cond_6
    return-void
.end method

.method public static arraycopy([FI[FII)V
    .locals 4
    .param p0, "src"    # [F
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 715
    if-nez p0, :cond_0

    .line 716
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 718
    :cond_0
    if-nez p2, :cond_1

    .line 719
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    .line 723
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 725
    const-string/jumbo v3, " dst.length="

    .line 724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 725
    array-length v3, p2

    .line 724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 725
    const-string/jumbo v3, " dstPos="

    .line 724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 725
    const-string/jumbo v3, " length="

    .line 724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 723
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    :cond_3
    if-ltz p4, :cond_2

    .line 722
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    .line 727
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 729
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 733
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 734
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 733
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 738
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 739
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 744
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyFloatUnchecked([FI[FII)V

    .line 714
    :cond_6
    return-void
.end method

.method public static arraycopy([II[III)V
    .locals 4
    .param p0, "src"    # [I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 609
    if-nez p0, :cond_0

    .line 610
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 612
    :cond_0
    if-nez p2, :cond_1

    .line 613
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    .line 617
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 619
    const-string/jumbo v3, " dst.length="

    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 619
    array-length v3, p2

    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 619
    const-string/jumbo v3, " dstPos="

    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 619
    const-string/jumbo v3, " length="

    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 617
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    :cond_3
    if-ltz p4, :cond_2

    .line 616
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    .line 621
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 623
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 627
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 628
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 627
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 632
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 633
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 638
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyIntUnchecked([II[III)V

    .line 608
    :cond_6
    return-void
.end method

.method public static arraycopy([JI[JII)V
    .locals 4
    .param p0, "src"    # [J
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 662
    if-nez p0, :cond_0

    .line 663
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 665
    :cond_0
    if-nez p2, :cond_1

    .line 666
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    .line 670
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 672
    const-string/jumbo v3, " dst.length="

    .line 671
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 672
    array-length v3, p2

    .line 671
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 672
    const-string/jumbo v3, " dstPos="

    .line 671
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 672
    const-string/jumbo v3, " length="

    .line 671
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 670
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    :cond_3
    if-ltz p4, :cond_2

    .line 669
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    .line 674
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 676
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 680
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 681
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 680
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 685
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 686
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 691
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyLongUnchecked([JI[JII)V

    .line 661
    :cond_6
    return-void
.end method

.method public static arraycopy([SI[SII)V
    .locals 4
    .param p0, "src"    # [S
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 556
    if-nez p0, :cond_0

    .line 557
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_0
    if-nez p2, :cond_1

    .line 560
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    .line 564
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 566
    const-string/jumbo v3, " dst.length="

    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 566
    array-length v3, p2

    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 566
    const-string/jumbo v3, " dstPos="

    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 566
    const-string/jumbo v3, " length="

    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_3
    if-ltz p4, :cond_2

    .line 563
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    .line 568
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 570
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 574
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 575
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    .line 574
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 579
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 580
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 585
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyShortUnchecked([SI[SII)V

    .line 555
    :cond_6
    return-void
.end method

.method public static arraycopy([ZI[ZII)V
    .locals 4
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 821
    if-nez p0, :cond_0

    .line 822
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 824
    :cond_0
    if-nez p2, :cond_1

    .line 825
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 827
    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    .line 829
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 831
    const-string/jumbo v3, " dst.length="

    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 831
    array-length v3, p2

    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 831
    const-string/jumbo v3, " dstPos="

    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 831
    const-string/jumbo v3, " length="

    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 829
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 827
    :cond_3
    if-ltz p4, :cond_2

    .line 828
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    .line 833
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 835
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 839
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 840
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    .line 839
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 844
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 845
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 850
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyBooleanUnchecked([ZI[ZII)V

    .line 820
    :cond_6
    return-void
.end method

.method private static native arraycopyBooleanUnchecked([ZI[ZII)V
.end method

.method private static native arraycopyByteUnchecked([BI[BII)V
.end method

.method private static native arraycopyCharUnchecked([CI[CII)V
.end method

.method private static native arraycopyDoubleUnchecked([DI[DII)V
.end method

.method private static native arraycopyFloatUnchecked([FI[FII)V
.end method

.method private static native arraycopyIntUnchecked([II[III)V
.end method

.method private static native arraycopyLongUnchecked([JI[JII)V
.end method

.method private static native arraycopyShortUnchecked([SI[SII)V
.end method

.method private static checkKey(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1293
    if-nez p0, :cond_0

    .line 1294
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1296
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1292
    :cond_1
    return-void
.end method

.method public static clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1287
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1289
    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static console()Ljava/io/Console;
    .locals 2

    .prologue
    .line 205
    const-class v1, Ljava/lang/System;

    monitor-enter v1

    .line 206
    :try_start_0
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Ljava/io/Console;->console()Ljava/io/Console;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    .line 210
    :cond_0
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native currentTimeMillis()J
.end method

.method public static exit(I)V
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 1421
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exit(I)V

    .line 1420
    return-void
.end method

.method public static gc()V
    .locals 3

    .prologue
    .line 1444
    sget-object v2, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 1445
    :try_start_0
    sget-boolean v0, Ljava/lang/System;->justRanFinalization:Z

    .line 1446
    .local v0, "shouldRunGC":Z
    if-eqz v0, :cond_1

    .line 1447
    const/4 v1, 0x0

    sput-boolean v1, Ljava/lang/System;->justRanFinalization:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 1452
    if-eqz v0, :cond_0

    .line 1453
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 1442
    :cond_0
    return-void

    .line 1449
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Ljava/lang/System;->runGC:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1444
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static generateIcuDataPath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1077
    .local v1, "icuDataPathBuilder":Ljava/lang/StringBuilder;
    if-nez v1, :cond_0

    .line 1078
    return-object v3

    .line 1081
    :cond_0
    const-string/jumbo v3, "ANDROID_DATA"

    const-string/jumbo v4, "/misc/zoneinfo/current/icu"

    invoke-static {v3, v4}, Ljava/lang/System;->getEnvironmentPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    .local v0, "dataIcuDataPath":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1083
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    :cond_1
    const-string/jumbo v3, "ANDROID_ROOT"

    const-string/jumbo v4, "/usr/icu"

    invoke-static {v3, v4}, Ljava/lang/System;->getEnvironmentPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1088
    .local v2, "systemIcuDataPath":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1089
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1090
    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getEnvironmentPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "environmentVariable"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1102
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "variable":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1104
    return-object v1

    .line 1106
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 1163
    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1216
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1218
    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 1244
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1246
    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecurityManager()Ljava/lang/SecurityManager;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1348
    if-nez p0, :cond_0

    .line 1349
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1352
    :cond_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getenv()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1397
    invoke-static {}, Ljava/lang/ProcessEnvironment;->getenv()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static native identityHashCode(Ljava/lang/Object;)I
.end method

.method public static inheritedChannel()Ljava/nio/channels/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    return-object v0
.end method

.method private static initProperties()Ljava/util/Properties;
    .locals 2

    .prologue
    .line 1008
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    .line 1009
    .local v0, "p":Ljava/util/Properties;
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    .line 1010
    return-object v0
.end method

.method private static initUnchangeableSystemProperties()Ljava/util/Properties;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v9, 0x0

    .line 938
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    .line 939
    .local v7, "runtime":Ldalvik/system/VMRuntime;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 942
    .local v4, "p":Ljava/util/Properties;
    const-string/jumbo v8, "java.boot.class.path"

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->bootClassPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const-string/jumbo v8, "java.class.path"

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->classPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string/jumbo v8, "JAVA_HOME"

    invoke-static {v8}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 947
    .local v3, "javaHome":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 948
    const-string/jumbo v3, "/system"

    .line 950
    :cond_0
    const-string/jumbo v8, "java.home"

    invoke-virtual {v4, v8, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-string/jumbo v8, "java.vm.version"

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->vmVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    :try_start_0
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v10}, Llibcore/io/Os;->getuid()I

    move-result v10

    invoke-interface {v8, v10}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    move-result-object v6

    .line 956
    .local v6, "passwd":Landroid/system/StructPasswd;
    const-string/jumbo v8, "user.name"

    iget-object v10, v6, Landroid/system/StructPasswd;->pw_name:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v2

    .line 962
    .local v2, "info":Landroid/system/StructUtsname;
    const-string/jumbo v8, "os.arch"

    iget-object v10, v2, Landroid/system/StructUtsname;->machine:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const-string/jumbo v8, "os.name"

    invoke-virtual {v4, v8}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "os.name"

    invoke-virtual {v4, v8}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v10, v2, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 968
    :cond_1
    :goto_0
    const-string/jumbo v8, "os.version"

    iget-object v10, v2, Landroid/system/StructUtsname;->release:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string/jumbo v8, "android.icu.library.version"

    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string/jumbo v8, "android.icu.unicode.version"

    invoke-static {}, Llibcore/icu/ICU;->getUnicodeVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const-string/jumbo v8, "android.icu.cldr.version"

    invoke-static {}, Llibcore/icu/ICU;->getCldrVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    invoke-static {}, Ljava/lang/System;->generateIcuDataPath()Ljava/lang/String;

    move-result-object v1

    .line 980
    .local v1, "icuDataPath":Ljava/lang/String;
    const-string/jumbo v8, "android.icu.impl.ICUBinary.dataPath"

    invoke-virtual {v4, v8, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    invoke-static {}, Ljava/lang/System;->specialProperties()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 987
    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->properties()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 993
    sget-object v10, Ljava/lang/AndroidHardcodedSystemProperties;->STATIC_PROPERTIES:[[Ljava/lang/String;

    array-length v11, v10

    move v8, v9

    :goto_1
    if-ge v8, v11, :cond_5

    aget-object v5, v10, v8

    .line 994
    .local v5, "pair":[Ljava/lang/String;
    aget-object v12, v5, v9

    invoke-virtual {v4, v12}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 995
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Ignoring command line argument: -D"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v5, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 997
    :cond_2
    aget-object v12, v5, v14

    if-nez v12, :cond_4

    .line 998
    aget-object v12, v5, v9

    invoke-virtual {v4, v12}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 957
    .end local v1    # "icuDataPath":Ljava/lang/String;
    .end local v2    # "info":Landroid/system/StructUtsname;
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v6    # "passwd":Landroid/system/StructPasswd;
    :catch_0
    move-exception v0

    .line 958
    .local v0, "exception":Landroid/system/ErrnoException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 964
    .end local v0    # "exception":Landroid/system/ErrnoException;
    .restart local v2    # "info":Landroid/system/StructUtsname;
    .restart local v6    # "passwd":Landroid/system/StructPasswd;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Wrong compile-time assumption for os.name: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "os.name"

    invoke-virtual {v4, v10}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " vs "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 965
    iget-object v10, v2, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    .line 964
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 966
    const-string/jumbo v8, "os.name"

    iget-object v10, v2, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1000
    .restart local v1    # "icuDataPath":Ljava/lang/String;
    .restart local v5    # "pair":[Ljava/lang/String;
    :cond_4
    aget-object v12, v5, v9

    aget-object v13, v5, v14

    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1004
    .end local v5    # "pair":[Ljava/lang/String;
    :cond_5
    return-object v4
.end method

.method public static lineSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1175
    sget-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public static load(Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 1542
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->load0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1541
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 2
    .param p0, "libname"    # Ljava/lang/String;

    .prologue
    .line 1567
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 1566
    return-void
.end method

.method private static native log(CLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1623
    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1622
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 1630
    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1629
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1637
    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1636
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 1644
    const/16 v0, 0x49

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1643
    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1651
    const/16 v0, 0x57

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1650
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 1658
    const/16 v0, 0x57

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1657
    return-void
.end method

.method public static native mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nanoTime()J
.end method

.method private static parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V
    .locals 8
    .param p0, "p"    # Ljava/util/Properties;
    .param p1, "assignments"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 929
    array-length v6, p1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p1, v4

    .line 930
    .local v0, "assignment":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 931
    .local v2, "split":I
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 932
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 933
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 928
    .end local v0    # "assignment":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "split":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static runFinalization()V
    .locals 3

    .prologue
    .line 1477
    sget-object v2, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 1478
    :try_start_0
    sget-boolean v0, Ljava/lang/System;->runGC:Z

    .line 1479
    .local v0, "shouldRunGC":Z
    const/4 v1, 0x0

    sput-boolean v1, Ljava/lang/System;->runGC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1481
    if-eqz v0, :cond_0

    .line 1482
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 1484
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->runFinalization()V

    .line 1485
    sget-object v1, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1486
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Ljava/lang/System;->justRanFinalization:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 1475
    return-void

    .line 1477
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1485
    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static runFinalizersOnExit(Z)V
    .locals 0
    .param p0, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1517
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    invoke-static {p0}, Ljava/lang/Runtime;->runFinalizersOnExit(Z)V

    .line 1516
    return-void
.end method

.method private static setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 2
    .param p0, "p"    # Ljava/util/Properties;

    .prologue
    .line 1019
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    const-string/jumbo v1, "java.io.tmpdir"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1020
    const-string/jumbo v0, "java.io.tmpdir"

    const-string/jumbo v1, "/tmp"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    :cond_0
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    const-string/jumbo v1, "user.home"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1031
    const-string/jumbo v0, "user.home"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    :cond_1
    return-object p0
.end method

.method public static setErr(Ljava/io/PrintStream;)V
    .locals 0
    .param p0, "err"    # Ljava/io/PrintStream;

    .prologue
    .line 191
    invoke-static {p0}, Ljava/lang/System;->setErr0(Ljava/io/PrintStream;)V

    .line 190
    return-void
.end method

.method private static native setErr0(Ljava/io/PrintStream;)V
.end method

.method public static setIn(Ljava/io/InputStream;)V
    .locals 0
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 145
    invoke-static {p0}, Ljava/lang/System;->setIn0(Ljava/io/InputStream;)V

    .line 144
    return-void
.end method

.method private static native setIn0(Ljava/io/InputStream;)V
.end method

.method public static setOut(Ljava/io/PrintStream;)V
    .locals 0
    .param p0, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 168
    invoke-static {p0}, Ljava/lang/System;->setOut0(Ljava/io/PrintStream;)V

    .line 167
    return-void
.end method

.method private static native setOut0(Ljava/io/PrintStream;)V
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .locals 2
    .param p0, "props"    # Ljava/util/Properties;

    .prologue
    .line 1188
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    .line 1189
    .local v0, "baseProperties":Ljava/util/Properties;
    if-eqz p0, :cond_0

    .line 1190
    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 1195
    :goto_0
    sput-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    .line 1187
    return-void

    .line 1192
    :cond_0
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    goto :goto_0
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1266
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1268
    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static setSecurityManager(Ljava/lang/SecurityManager;)V
    .locals 1
    .param p0, "sm"    # Ljava/lang/SecurityManager;

    .prologue
    .line 259
    if-eqz p0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 258
    :cond_0
    return-void
.end method

.method public static setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1046
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1047
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    return-void
.end method

.method private static native specialProperties()[Ljava/lang/String;
.end method
