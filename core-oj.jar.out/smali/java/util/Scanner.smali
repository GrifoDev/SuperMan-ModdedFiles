.class public final Ljava/util/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Scanner$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BOOLEAN_PATTERN:Ljava/lang/String; = "true|false"

.field private static final BUFFER_SIZE:I = 0x400

.field private static FIND_ANY_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final LINE_PATTERN:Ljava/lang/String; = ".*(\r\n|[\n\r\u2028\u2029\u0085])|.+$"

.field private static final LINE_SEPARATOR_PATTERN:Ljava/lang/String; = "\r\n|[\n\r\u2028\u2029\u0085]"

.field private static NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

.field private static WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

.field private static volatile boolPattern:Ljava/util/regex/Pattern;

.field private static volatile linePattern:Ljava/util/regex/Pattern;

.field private static volatile separatorPattern:Ljava/util/regex/Pattern;


# instance fields
.field private SIMPLE_GROUP_INDEX:I

.field private buf:Ljava/nio/CharBuffer;

.field private closed:Z

.field private decimalPattern:Ljava/util/regex/Pattern;

.field private decimalSeparator:Ljava/lang/String;

.field private defaultRadix:I

.field private delimPattern:Ljava/util/regex/Pattern;

.field private digits:Ljava/lang/String;

.field private floatPattern:Ljava/util/regex/Pattern;

.field private groupSeparator:Ljava/lang/String;

.field private hasNextPattern:Ljava/util/regex/Pattern;

.field private hasNextPosition:I

.field private hasNextResult:Ljava/lang/String;

.field private infinityString:Ljava/lang/String;

.field private integerPattern:Ljava/util/regex/Pattern;

.field private lastException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private matchValid:Z

.field private matcher:Ljava/util/regex/Matcher;

.field private nanString:Ljava/lang/String;

.field private needInput:Z

.field private negativePrefix:Ljava/lang/String;

.field private negativeSuffix:Ljava/lang/String;

.field private non0Digit:Ljava/lang/String;

.field private patternCache:Lsun/misc/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/misc/LRUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private positivePrefix:Ljava/lang/String;

.field private positiveSuffix:Ljava/lang/String;

.field private radix:I

.field private savedScannerPosition:I

.field private skipped:Z

.field private source:Ljava/lang/Readable;

.field private sourceClosed:Z

.field private typeCache:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/Scanner;->-assertionsDisabled:Z

    const-string/jumbo v0, "\\p{javaWhitespace}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "(?s).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "[\\p{javaDigit}&&[^0-9]]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {p2}, Ljava/util/Scanner;->toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/nio/charset/CharsetDecoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {p2}, Ljava/util/Scanner;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Scanner;->makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;

    move-result-object v0

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Readable;)V
    .locals 2

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V
    .locals 5

    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Ljava/util/Scanner;->sourceClosed:Z

    iput-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    iput-boolean v2, p0, Ljava/util/Scanner;->skipped:Z

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    iput-boolean v2, p0, Ljava/util/Scanner;->matchValid:Z

    iput-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    iput v4, p0, Ljava/util/Scanner;->radix:I

    iput v4, p0, Ljava/util/Scanner;->defaultRadix:I

    iput-object v3, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    new-instance v0, Ljava/util/Scanner$1;

    const/4 v3, 0x7

    invoke-direct {v0, p0, v3}, Ljava/util/Scanner$1;-><init>(Ljava/util/Scanner;I)V

    iput-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    const-string/jumbo v0, "\\,"

    iput-object v0, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    const-string/jumbo v0, "\\."

    iput-object v0, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    const-string/jumbo v0, "NaN"

    iput-object v0, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    const-string/jumbo v0, "Infinity"

    iput-object v0, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    const-string/jumbo v0, "\\-"

    iput-object v0, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    const-string/jumbo v0, "0123456789abcdefghijklmnopqrstuvwxyz"

    iput-object v0, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    const-string/jumbo v0, "[\\p{javaDigit}&&[^0]]"

    iput-object v0, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    sget-boolean v0, Ljava/util/Scanner;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "source should not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    sget-boolean v0, Ljava/util/Scanner;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "pattern should not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iput-object p1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    iput-object p2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useTransparentBounds(Z)Ljava/util/regex/Matcher;

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->useAnchoringBounds(Z)Ljava/util/regex/Matcher;

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 2

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v0}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/Readable;

    move-result-object v0

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {p2}, Ljava/util/Scanner;->toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    return-void
.end method

.method private static boolPattern()Ljava/util/regex/Pattern;
    .locals 3

    sget-object v0, Ljava/util/Scanner;->boolPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string/jumbo v1, "true|false"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->boolPattern:Ljava/util/regex/Pattern;

    :cond_0
    return-object v0
.end method

.method private buildFloatAndDecimalPattern()V
    .locals 15

    const-string/jumbo v2, "([0-9]|(\\p{javaDigit}))"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "([eE][+-]?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "+)?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "?("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")+)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "(("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "++)|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "*+|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "++)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "(NaN|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|Infinity|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "(([-+]?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "[-+]?0[xX][0-9a-fA-F]*\\.[0-9a-fA-F]+([pP][-+]?[0-9]+)?"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "(([-+]?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    iput-object v13, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    iput-object v13, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private buildIntegerPatternString()Ljava/lang/String;
    .locals 12

    iget-object v8, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    iget v9, p0, Ljava/util/Scanner;->radix:I

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "((?i)["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    iget v10, p0, Ljava/util/Scanner;->radix:I

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]|("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "))"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "((?i)["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]|\\p{javaDigit})"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "?("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")+)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "++)|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "([-+]?("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "))"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")|("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")|("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private cacheResult()V
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private cacheResult(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private clearCaches()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    return-void
.end method

.method private decimalPattern()Ljava/util/regex/Pattern;
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/util/Scanner;->buildFloatAndDecimalPattern()V

    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private ensureOpen()V
    .locals 2

    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Scanner closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    iput-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    const/4 v1, -0x1

    move v2, v0

    if-lez p2, :cond_0

    iget v3, p0, Ljava/util/Scanner;->position:I

    add-int v1, v3, p2

    if-ge v1, v0, :cond_0

    move v2, v1

    :cond_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v3, v4, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    if-eq v2, v1, :cond_3

    iput-boolean v6, p0, Ljava/util/Scanner;->needInput:Z

    return-object v5

    :cond_3
    if-ne v2, v1, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->requireEnd()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v6, p0, Ljava/util/Scanner;->needInput:Z

    return-object v5

    :cond_4
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_5

    return-object v5

    :cond_5
    if-eqz p2, :cond_6

    if-eq v2, v1, :cond_7

    :cond_6
    iput-boolean v6, p0, Ljava/util/Scanner;->needInput:Z

    :cond_7
    return-object v5
.end method

.method private floatPattern()Ljava/util/regex/Pattern;
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/util/Scanner;->buildFloatAndDecimalPattern()V

    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private getCachedResult()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    iput-object v1, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    iput-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    iget-object v0, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    return-object v0
.end method

.method private getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v4, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-boolean v3, p0, Ljava/util/Scanner;->skipped:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    iget-object v5, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_2

    :cond_0
    iput-boolean v7, p0, Ljava/util/Scanner;->skipped:Z

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    :cond_1
    iget v3, p0, Ljava/util/Scanner;->position:I

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_3

    return-object v6

    :cond_2
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    return-object v6

    :cond_3
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    return-object v6

    :cond_4
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    iget-object v5, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Ljava/util/Scanner;->position:I

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    :cond_5
    if-eqz v0, :cond_a

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->requireEnd()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_8

    :cond_6
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    if-nez p1, :cond_7

    sget-object p1, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    :cond_7
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v3, v4, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    return-object v1

    :cond_8
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    return-object v6

    :cond_9
    return-object v6

    :cond_a
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_d

    if-nez p1, :cond_b

    sget-object p1, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    :cond_b
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    iget-object v5, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    return-object v1

    :cond_c
    return-object v6

    :cond_d
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    return-object v6
.end method

.method private hasTokenInBuffer()Z
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Ljava/util/Scanner;->position:I

    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->position:I

    :cond_0
    iget v0, p0, Ljava/util/Scanner;->position:I

    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private integerPattern()Ljava/util/regex/Pattern;
    .locals 2

    iget-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-direct {p0}, Ljava/util/Scanner;->buildIntegerPatternString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static linePattern()Ljava/util/regex/Pattern;
    .locals 2

    sget-object v0, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string/jumbo v1, ".*(\r\n|[\n\r\u2028\u2029\u0085])|.+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    :cond_0
    return-object v0
.end method

.method private static makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static makeReadable(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/Readable;
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    return-object v0
.end method

.method private static makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method private makeSpace()Z
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    iget v3, p0, Ljava/util/Scanner;->savedScannerPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v2, p0, Ljava/util/Scanner;->position:I

    :goto_0
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    if-lez v2, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    invoke-direct {p0, v2}, Ljava/util/Scanner;->translateSavedIndexes(I)V

    iget v3, p0, Ljava/util/Scanner;->position:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/util/Scanner;->position:I

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    return v5

    :cond_0
    iget v2, p0, Ljava/util/Scanner;->savedScannerPosition:I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v1, v3, 0x2

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-direct {p0, v2}, Ljava/util/Scanner;->translateSavedIndexes(I)V

    iget v3, p0, Ljava/util/Scanner;->position:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/util/Scanner;->position:I

    iput-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    return v5
.end method

.method private matchPatternInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Ljava/util/Scanner;->position:I

    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->position:I

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iput-boolean v4, p0, Ljava/util/Scanner;->needInput:Z

    return-object v3

    :cond_2
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v0, :cond_3

    return-object v3

    :cond_3
    iput-boolean v4, p0, Ljava/util/Scanner;->needInput:Z

    return-object v3
.end method

.method private processFloatToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    iget-object v9, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    const-string/jumbo v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    const-string/jumbo v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    const-string/jumbo v10, "."

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_0
    const/4 v3, 0x0

    iget-object v9, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v9, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_1
    iget-object v9, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v9, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_2
    iget-object v9, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v7, "NaN"

    :cond_3
    iget-object v9, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v7, "Infinity"

    :cond_4
    const-string/jumbo v9, "\u221e"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v7, "Infinity"

    :cond_5
    if-eqz v3, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_6
    sget-object v9, Ljava/util/Scanner;->NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_9

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0xa

    invoke-static {v5, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_a
    return-object v7
.end method

.method private processIntegerToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v4, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v4, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v4, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v4, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method private readInput()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->capacity()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Ljava/util/Scanner;->makeSpace()Z

    :cond_0
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-interface {v3, v4}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    iput-boolean v5, p0, Ljava/util/Scanner;->needInput:Z

    :cond_1
    if-lez v1, :cond_2

    iput-boolean v5, p0, Ljava/util/Scanner;->needInput:Z

    :cond_2
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    const/4 v1, -0x1

    goto :goto_0
.end method

.method private revertState()V
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    return-void
.end method

.method private revertState(Z)Z
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    return p1
.end method

.method private saveState()V
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->position:I

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    return-void
.end method

.method private static separatorPattern()Ljava/util/regex/Pattern;
    .locals 2

    sget-object v0, Ljava/util/Scanner;->separatorPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string/jumbo v1, "\r\n|[\n\r\u2028\u2029\u0085]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->separatorPattern:Ljava/util/regex/Pattern;

    :cond_0
    return-object v0
.end method

.method private setRadix(I)V
    .locals 3

    const/16 v0, 0x24

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "radix == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/Scanner;->radix:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    iput p1, p0, Ljava/util/Scanner;->radix:I

    :cond_1
    return-void
.end method

.method private throwFor()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/util/Scanner;->position:I

    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/InputMismatchException;

    invoke-direct {v0}, Ljava/util/InputMismatchException;-><init>()V

    throw v0
.end method

.method private static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2

    const-string/jumbo v1, "charsetName"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .locals 3

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "charsetName == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private translateSavedIndexes(I)V
    .locals 2

    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    :cond_0
    return-void
.end method

.method private useTypeCache()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Scanner closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    iput-object v1, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    iput-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-boolean v2, p0, Ljava/util/Scanner;->sourceClosed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    iput-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    goto :goto_0
.end method

.method public delimiter()Ljava/util/regex/Pattern;
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public findInLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    :goto_0
    invoke-static {}, Ljava/util/Scanner;->separatorPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Ljava/util/Scanner;->findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    :goto_1
    invoke-direct {p0}, Ljava/util/Scanner;->revertState()V

    iget v3, p0, Ljava/util/Scanner;->position:I

    sub-int v1, v0, v3

    if-nez v1, :cond_3

    return-object v4

    :cond_1
    iget-boolean v3, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v1}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    if-gez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "horizon < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/util/Scanner;->findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    return-object v0

    :cond_2
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public hasNext()Z
    .locals 2

    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    :goto_0
    iget-boolean v1, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Ljava/util/Scanner;->hasTokenInBuffer()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v1

    return v1

    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->hasTokenInBuffer()Z

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v1

    return v1
.end method

.method public hasNext(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/util/regex/Pattern;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    :goto_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    invoke-direct {p0}, Ljava/util/Scanner;->cacheResult()V

    invoke-direct {p0, v1}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v0

    return v0

    :cond_1
    iget-boolean v0, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v0

    return v0
.end method

.method public hasNextBigDecimal()Z
    .locals 4

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->decimalPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasNextBigInteger()Z
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextBigInteger(I)Z

    move-result v0

    return v0
.end method

.method public hasNextBigInteger(I)Z
    .locals 5

    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasNextBoolean()Z
    .locals 1

    invoke-static {}, Ljava/util/Scanner;->boolPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNextByte()Z
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextByte(I)Z

    move-result v0

    return v0
.end method

.method public hasNextByte(I)Z
    .locals 5

    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasNextDouble()Z
    .locals 6

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasNextFloat()Z
    .locals 4

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasNextInt()Z
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextInt(I)Z

    move-result v0

    return v0
.end method

.method public hasNextInt(I)Z
    .locals 5

    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasNextLine()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    invoke-static {}, Ljava/util/Scanner;->linePattern()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Scanner;->cacheResult(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Ljava/util/Scanner;->revertState()V

    if-eqz v2, :cond_2

    :goto_1
    return v3

    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->cacheResult()V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public hasNextLong()Z
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextLong(I)Z

    move-result v0

    return v0
.end method

.method public hasNextLong(I)Z
    .locals 6

    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasNextShort()Z
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextShort(I)Z

    move-result v0

    return v0
.end method

.method public hasNextShort(I)Z
    .locals 5

    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public match()Ljava/util/regex/MatchResult;
    .locals 2

    iget-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No match result available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    :goto_0
    invoke-direct {p0, v2}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    return-object v0

    :cond_0
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->throwFor()V

    goto :goto_0
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    if-ne v1, p1, :cond_1

    invoke-direct {p0}, Ljava/util/Scanner;->getCachedResult()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    :goto_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    return-object v0

    :cond_2
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Ljava/util/Scanner;->throwFor()V

    goto :goto_0
.end method

.method public nextBigDecimal()Ljava/math/BigDecimal;
    .locals 5

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/math/BigDecimal;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    return-object v2

    :cond_0
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->decimalPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public nextBigInteger(I)Ljava/math/BigInteger;
    .locals 5

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/math/BigInteger;

    if-eqz v3, :cond_0

    iget v3, p0, Ljava/util/Scanner;->radix:I

    if-ne v3, p1, :cond_0

    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v2, Ljava/math/BigInteger;

    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextBoolean()Z
    .locals 1

    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    invoke-static {}, Ljava/util/Scanner;->boolPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nextByte()B
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextByte(I)B

    move-result v0

    return v0
.end method

.method public nextByte(I)B
    .locals 5

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Byte;

    if-eqz v3, :cond_0

    iget v3, p0, Ljava/util/Scanner;->radix:I

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    return v2

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextDouble()D
    .locals 6

    iget-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    return-wide v2

    :cond_0
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    :catch_0
    move-exception v0

    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextFloat()F
    .locals 4

    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    return v1

    :cond_0
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->position:I

    new-instance v2, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextInt()I
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 5

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget v3, p0, Ljava/util/Scanner;->radix:I

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    return v2

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextLine()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    invoke-static {}, Ljava/util/Scanner;->linePattern()Ljava/util/regex/Pattern;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Ljava/util/Scanner;->getCachedResult()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    sget-object v3, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v3, v5}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v3, Ljava/util/NoSuchElementException;

    const-string/jumbo v4, "No line found"

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p0}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    :cond_3
    return-object v2
.end method

.method public nextLong()J
    .locals 2

    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(I)J
    .locals 6

    iget-object v4, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_0

    iget v4, p0, Ljava/util/Scanner;->radix:I

    if-ne v4, p1, :cond_0

    iget-object v4, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    return-wide v2

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v5, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    :catch_0
    move-exception v0

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    iput v4, p0, Ljava/util/Scanner;->position:I

    new-instance v4, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public nextShort()S
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextShort(I)S

    move-result v0

    return v0
.end method

.method public nextShort(I)S
    .locals 5

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Short;

    if-eqz v3, :cond_0

    iget v3, p0, Ljava/util/Scanner;->radix:I

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    return v2

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public radix()I
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()Ljava/util/Scanner;
    .locals 1

    sget-object v0, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useRadix(I)Ljava/util/Scanner;

    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    return-object p0
.end method

.method public skip(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .locals 2

    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    :goto_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->matchPatternInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    return-object p0

    :cond_1
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "java.util.Scanner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[delimiters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[match valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->matchValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[need input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[source closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->sourceClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[skipped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->skipped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[group separator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[decimal separator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[positive prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[negative prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[positive suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[negative suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[NaN string="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[infinity string="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .locals 0

    iput-object p1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public useLocale(Ljava/util/Locale;)Ljava/util/Scanner;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    iput-object p1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    :cond_4
    iput-object v4, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    iput-object v4, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public useRadix(I)Ljava/util/Scanner;
    .locals 3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x24

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "radix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    if-ne v0, p1, :cond_2

    return-object p0

    :cond_2
    iput p1, p0, Ljava/util/Scanner;->defaultRadix:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    return-object p0
.end method
