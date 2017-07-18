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

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    const/4 v3, 0x0

    sput-object v3, Ljava/lang/System;->cons:Ljava/io/Console;

    invoke-static {}, Ljava/lang/System;->initUnchangeableSystemProperties()Ljava/util/Properties;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-static {}, Ljava/lang/System;->initProperties()Ljava/util/Properties;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-static {}, Ljava/lang/System;->addLegacyLocaleSystemProperties()V

    invoke-static {}, Lsun/misc/Version;->initSystemProperties()V

    sget-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string/jumbo v4, "line.separator"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    new-instance v1, Ljava/io/FileInputStream;

    sget-object v3, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v3, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {}, Lsun/misc/VM;->initializeOSEnvironment()V

    invoke-static {}, Lsun/misc/VM;->booted()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLegacyLocaleSystemProperties()V
    .locals 6

    const-string/jumbo v4, "user.locale"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v4, "user.language"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "user.region"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "user.variant"

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "user.language"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "user.region"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "user.language"

    const-string/jumbo v5, "en"

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "user.region"

    const-string/jumbo v5, "US"

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static native arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
.end method

.method public static arraycopy([BI[BII)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

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

    const-string/jumbo v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-ltz v0, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyByteUnchecked([BI[BII)V

    :cond_6
    return-void
.end method

.method public static arraycopy([CI[CII)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

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

    const-string/jumbo v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-ltz v0, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyCharUnchecked([CI[CII)V

    :cond_6
    return-void
.end method

.method public static arraycopy([DI[DII)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

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

    const-string/jumbo v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-ltz v0, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyDoubleUnchecked([DI[DII)V

    :cond_6
    return-void
.end method

.method public static arraycopy([FI[FII)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

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

    const-string/jumbo v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-ltz v0, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyFloatUnchecked([FI[FII)V

    :cond_6
    return-void
.end method

.method public static arraycopy([II[III)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

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

    const-string/jumbo v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-ltz v0, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyIntUnchecked([II[III)V

    :cond_6
    return-void
.end method

.method public static arraycopy([JI[JII)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

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

    const-string/jumbo v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-ltz v0, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyLongUnchecked([JI[JII)V

    :cond_6
    return-void
.end method

.method public static arraycopy([SI[SII)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

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

    const-string/jumbo v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-ltz v0, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyShortUnchecked([SI[SII)V

    :cond_6
    return-void
.end method

.method public static arraycopy([ZI[ZII)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p1, :cond_2

    if-gez p3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

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

    const-string/jumbo v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-ltz v0, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_6

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyBooleanUnchecked([ZI[ZII)V

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

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static console()Ljava/io/Console;
    .locals 2

    const-class v1, Ljava/lang/System;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/io/Console;->console()Ljava/io/Console;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    :cond_0
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native currentTimeMillis()J
.end method

.method public static exit(I)V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method

.method public static gc()V
    .locals 3

    sget-object v2, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Ljava/lang/System;->justRanFinalization:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Ljava/lang/System;->justRanFinalization:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Ljava/lang/System;->runGC:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static generateIcuDataPath()Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    const-string/jumbo v3, "ANDROID_DATA"

    const-string/jumbo v4, "/misc/zoneinfo/current/icu"

    invoke-static {v3, v4}, Ljava/lang/System;->getEnvironmentPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v3, "ANDROID_ROOT"

    const-string/jumbo v4, "/usr/icu"

    invoke-static {v3, v4}, Ljava/lang/System;->getEnvironmentPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getEnvironmentPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

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

    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecurityManager()Ljava/lang/SecurityManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

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

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    return-object v0
.end method

.method private static initProperties()Ljava/util/Properties;
    .locals 2

    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    return-object v0
.end method

.method private static initUnchangeableSystemProperties()Ljava/util/Properties;
    .locals 15

    const/4 v14, 0x1

    const/4 v9, 0x0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const-string/jumbo v8, "java.boot.class.path"

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->bootClassPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "java.class.path"

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->classPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "JAVA_HOME"

    invoke-static {v8}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "/system"

    :cond_0
    const-string/jumbo v8, "java.home"

    invoke-virtual {v4, v8, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "java.vm.version"

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->vmVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v10}, Llibcore/io/Os;->getuid()I

    move-result v10

    invoke-interface {v8, v10}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    move-result-object v6

    const-string/jumbo v8, "user.name"

    iget-object v10, v6, Landroid/system/StructPasswd;->pw_name:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v2

    const-string/jumbo v8, "os.arch"

    iget-object v10, v2, Landroid/system/StructUtsname;->machine:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    :cond_1
    :goto_0
    const-string/jumbo v8, "os.version"

    iget-object v10, v2, Landroid/system/StructUtsname;->release:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "android.icu.library.version"

    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "android.icu.unicode.version"

    invoke-static {}, Llibcore/icu/ICU;->getUnicodeVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "android.icu.cldr.version"

    invoke-static {}, Llibcore/icu/ICU;->getCldrVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->generateIcuDataPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "android.icu.impl.ICUBinary.dataPath"

    invoke-virtual {v4, v8, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->specialProperties()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->properties()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    sget-object v10, Ljava/lang/AndroidHardcodedSystemProperties;->STATIC_PROPERTIES:[[Ljava/lang/String;

    array-length v11, v10

    move v8, v9

    :goto_1
    if-ge v8, v11, :cond_5

    aget-object v5, v10, v8

    aget-object v12, v5, v9

    invoke-virtual {v4, v12}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

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

    :cond_2
    aget-object v12, v5, v14

    if-nez v12, :cond_4

    aget-object v12, v5, v9

    invoke-virtual {v4, v12}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

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

    iget-object v10, v2, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    const-string/jumbo v8, "os.name"

    iget-object v10, v2, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    aget-object v12, v5, v9

    aget-object v13, v5, v14

    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-object v4
.end method

.method public static lineSeparator()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public static load(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->load0(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    return-void
.end method

.method private static native log(CLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0x49

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x57

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0x57

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static native mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nanoTime()J
.end method

.method private static parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    array-length v6, p1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p1, v4

    const/16 v7, 0x3d

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static runFinalization()V
    .locals 3

    sget-object v2, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Ljava/lang/System;->runGC:Z

    const/4 v1, 0x0

    sput-boolean v1, Ljava/lang/System;->runGC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->runFinalization()V

    sget-object v1, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Ljava/lang/System;->justRanFinalization:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static runFinalizersOnExit(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    invoke-static {p0}, Ljava/lang/Runtime;->runFinalizersOnExit(Z)V

    return-void
.end method

.method private static setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 2

    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    const-string/jumbo v1, "java.io.tmpdir"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "java.io.tmpdir"

    const-string/jumbo v1, "/tmp"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    const-string/jumbo v1, "user.home"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "user.home"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public static setErr(Ljava/io/PrintStream;)V
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->setErr0(Ljava/io/PrintStream;)V

    return-void
.end method

.method private static native setErr0(Ljava/io/PrintStream;)V
.end method

.method public static setIn(Ljava/io/InputStream;)V
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->setIn0(Ljava/io/InputStream;)V

    return-void
.end method

.method private static native setIn0(Ljava/io/InputStream;)V
.end method

.method public static setOut(Ljava/io/PrintStream;)V
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->setOut0(Ljava/io/PrintStream;)V

    return-void
.end method

.method private static native setOut0(Ljava/io/PrintStream;)V
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .locals 2

    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    :goto_0
    sput-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    goto :goto_0
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static setSecurityManager(Ljava/lang/SecurityManager;)V
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static native specialProperties()[Ljava/lang/String;
.end method
