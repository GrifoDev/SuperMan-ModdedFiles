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

    .prologue
    const-class v0, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/Scanner;->-assertionsDisabled:Z

    .line 422
    const-string/jumbo v0, "\\p{javaWhitespace}+"

    .line 421
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 425
    const-string/jumbo v0, "(?s).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    .line 429
    const-string/jumbo v0, "[\\p{javaDigit}&&[^0-9]]"

    .line 428
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

    .line 347
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "source"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 659
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 658
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/io/File;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {p2}, Ljava/util/Scanner;->toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetDecoder;)V

    .line 675
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/nio/charset/CharsetDecoder;)V
    .locals 1
    .param p1, "source"    # Ljava/io/File;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 683
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 681
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "source"    # Ljava/io/InputStream;

    .prologue
    .line 611
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 610
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 626
    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {p2}, Ljava/util/Scanner;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Scanner;->makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;

    move-result-object v0

    .line 627
    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 626
    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 625
    return-void
.end method

.method public constructor <init>(Ljava/lang/Readable;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Readable;

    .prologue
    .line 599
    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 598
    return-void
.end method

.method private constructor <init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V
    .locals 5
    .param p1, "source"    # Ljava/lang/Readable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-boolean v2, p0, Ljava/util/Scanner;->sourceClosed:Z

    .line 380
    iput-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    .line 383
    iput-boolean v2, p0, Ljava/util/Scanner;->skipped:Z

    .line 386
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 389
    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 392
    iput-boolean v2, p0, Ljava/util/Scanner;->matchValid:Z

    .line 395
    iput-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    .line 398
    iput v4, p0, Ljava/util/Scanner;->radix:I

    .line 401
    iput v4, p0, Ljava/util/Scanner;->defaultRadix:I

    .line 404
    iput-object v3, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 408
    new-instance v0, Ljava/util/Scanner$1;

    const/4 v3, 0x7

    invoke-direct {v0, p0, v3}, Ljava/util/Scanner$1;-><init>(Ljava/util/Scanner;I)V

    .line 407
    iput-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    .line 436
    const-string/jumbo v0, "\\,"

    iput-object v0, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    .line 437
    const-string/jumbo v0, "\\."

    iput-object v0, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    .line 438
    const-string/jumbo v0, "NaN"

    iput-object v0, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    .line 439
    const-string/jumbo v0, "Infinity"

    iput-object v0, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    .line 440
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    .line 441
    const-string/jumbo v0, "\\-"

    iput-object v0, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    .line 442
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 443
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 462
    const-string/jumbo v0, "0123456789abcdefghijklmnopqrstuvwxyz"

    iput-object v0, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    .line 463
    const-string/jumbo v0, "[\\p{javaDigit}&&[^0]]"

    iput-object v0, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    .line 464
    const/4 v0, 0x5

    iput v0, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    .line 579
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

    .line 580
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

    .line 581
    :cond_3
    iput-object p1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    .line 582
    iput-object p2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 583
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    .line 584
    iget-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 585
    iget-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    .line 586
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useTransparentBounds(Z)Ljava/util/regex/Matcher;

    .line 587
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->useAnchoringBounds(Z)Ljava/util/regex/Matcher;

    .line 588
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    .line 578
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 711
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 710
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 2
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    .line 723
    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v0}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/Readable;

    move-result-object v0

    .line 724
    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 723
    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 722
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 743
    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {p2}, Ljava/util/Scanner;->toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    .line 744
    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 743
    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 742
    return-void
.end method

.method private static boolPattern()Ljava/util/regex/Pattern;
    .locals 3

    .prologue
    .line 451
    sget-object v0, Ljava/util/Scanner;->boolPattern:Ljava/util/regex/Pattern;

    .line 452
    .local v0, "bp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_0

    .line 453
    const-string/jumbo v1, "true|false"

    .line 454
    const/4 v2, 0x2

    .line 453
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->boolPattern:Ljava/util/regex/Pattern;

    .line 455
    :cond_0
    return-object v0
.end method

.method private buildFloatAndDecimalPattern()V
    .locals 15

    .prologue
    .line 525
    const-string/jumbo v2, "([0-9]|(\\p{javaDigit}))"

    .line 526
    .local v2, "digit":Ljava/lang/String;
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

    .line 527
    .local v3, "exponent":Ljava/lang/String;
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

    .line 528
    iget-object v14, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    .line 527
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 528
    const-string/jumbo v14, ")+)"

    .line 527
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 530
    .local v4, "groupedNumeral":Ljava/lang/String;
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

    .line 531
    .local v9, "numeral":Ljava/lang/String;
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

    .line 532
    iget-object v14, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    .line 531
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 532
    const-string/jumbo v14, "*+|"

    .line 531
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 532
    iget-object v14, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    .line 531
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 533
    const-string/jumbo v14, "++)"

    .line 531
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "decimalNumeral":Ljava/lang/String;
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

    .line 535
    iget-object v14, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    .line 534
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 535
    const-string/jumbo v14, ")"

    .line 534
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 536
    .local v8, "nonNumber":Ljava/lang/String;
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

    .line 537
    iget-object v14, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 536
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 537
    const-string/jumbo v14, ")"

    .line 536
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 538
    .local v10, "positiveFloat":Ljava/lang/String;
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

    .line 539
    iget-object v14, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 538
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 539
    const-string/jumbo v14, ")"

    .line 538
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 540
    .local v6, "negativeFloat":Ljava/lang/String;
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

    .line 541
    const-string/jumbo v14, "|"

    .line 540
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 541
    const-string/jumbo v14, ")"

    .line 540
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "decimal":Ljava/lang/String;
    const-string/jumbo v5, "[-+]?0[xX][0-9a-fA-F]*\\.[0-9a-fA-F]+([pP][-+]?[0-9]+)?"

    .line 544
    .local v5, "hexFloat":Ljava/lang/String;
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

    .line 545
    iget-object v14, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 544
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 545
    const-string/jumbo v14, ")"

    .line 544
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 546
    .local v11, "positiveNonNumber":Ljava/lang/String;
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

    .line 547
    iget-object v14, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 546
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 547
    const-string/jumbo v14, ")"

    .line 546
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 548
    .local v7, "negativeNonNumber":Ljava/lang/String;
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

    .line 549
    const-string/jumbo v14, "|"

    .line 548
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 550
    const-string/jumbo v14, ")"

    .line 548
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 551
    .local v12, "signedNonNumber":Ljava/lang/String;
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

    .line 553
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    iput-object v13, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    .line 523
    return-void
.end method

.method private buildIntegerPatternString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 466
    iget-object v8, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    iget v9, p0, Ljava/util/Scanner;->radix:I

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 468
    .local v7, "radixDigits":Ljava/lang/String;
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

    .line 474
    .local v4, "nonZeroRadixDigits":Ljava/lang/String;
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

    .line 476
    .local v0, "digit":Ljava/lang/String;
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

    .line 477
    iget-object v9, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    .line 476
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 477
    const-string/jumbo v9, ")+)"

    .line 476
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "groupedNumeral":Ljava/lang/String;
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

    .line 481
    .local v5, "numeral":Ljava/lang/String;
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

    .line 482
    .local v2, "javaStyleInteger":Ljava/lang/String;
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

    .line 483
    .local v3, "negativeInteger":Ljava/lang/String;
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

    .line 484
    .local v6, "positiveInteger":Ljava/lang/String;
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

    .line 485
    const-string/jumbo v9, ")|("

    .line 484
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 486
    const-string/jumbo v9, ")"

    .line 484
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private cacheResult()V
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    .line 768
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    .line 769
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 766
    return-void
.end method

.method private cacheResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 773
    iput-object p1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    .line 774
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    .line 775
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 772
    return-void
.end method

.method private clearCaches()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 780
    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 781
    iput-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 779
    return-void
.end method

.method private decimalPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 563
    invoke-direct {p0}, Ljava/util/Scanner;->buildFloatAndDecimalPattern()V

    .line 565
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private ensureOpen()V
    .locals 2

    .prologue
    .line 1081
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_0

    .line 1082
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Scanner closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1080
    :cond_0
    return-void
.end method

.method private findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .locals 7
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "horizon"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1012
    iput-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1013
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1014
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    .line 1015
    .local v0, "bufferLimit":I
    const/4 v1, -0x1

    .line 1016
    .local v1, "horizonLimit":I
    move v2, v0

    .line 1017
    .local v2, "searchLimit":I
    if-lez p2, :cond_0

    .line 1018
    iget v3, p0, Ljava/util/Scanner;->position:I

    add-int v1, v3, p2

    .line 1019
    if-ge v1, v0, :cond_0

    .line 1020
    move v2, v1

    .line 1022
    :cond_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v3, v4, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1023
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1024
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_2

    .line 1041
    :cond_1
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 1042
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1026
    :cond_2
    if-eq v2, v1, :cond_3

    .line 1028
    iput-boolean v6, p0, Ljava/util/Scanner;->needInput:Z

    .line 1029
    return-object v5

    .line 1032
    :cond_3
    if-ne v2, v1, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->requireEnd()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1036
    iput-boolean v6, p0, Ljava/util/Scanner;->needInput:Z

    .line 1037
    return-object v5

    .line 1045
    :cond_4
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_5

    .line 1046
    return-object v5

    .line 1050
    :cond_5
    if-eqz p2, :cond_6

    if-eq v2, v1, :cond_7

    .line 1051
    :cond_6
    iput-boolean v6, p0, Ljava/util/Scanner;->needInput:Z

    .line 1052
    :cond_7
    return-object v5
.end method

.method private floatPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 557
    invoke-direct {p0}, Ljava/util/Scanner;->buildFloatAndDecimalPattern()V

    .line 559
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private getCachedResult()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 786
    iget v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 787
    iput-object v1, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 788
    iput-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 789
    iget-object v0, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    return-object v0
.end method

.method private getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 8
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 914
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    .line 917
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v4, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 918
    iget-boolean v3, p0, Ljava/util/Scanner;->skipped:Z

    if-nez v3, :cond_1

    .line 919
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    iget-object v5, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 920
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 923
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_2

    .line 928
    :cond_0
    iput-boolean v7, p0, Ljava/util/Scanner;->skipped:Z

    .line 929
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 934
    :cond_1
    iget v3, p0, Ljava/util/Scanner;->position:I

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 935
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_3

    .line 936
    return-object v6

    .line 924
    :cond_2
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    .line 925
    return-object v6

    .line 937
    :cond_3
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    .line 938
    return-object v6

    .line 947
    :cond_4
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    iget-object v5, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 948
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 949
    .local v0, "foundNextDelim":Z
    if-eqz v0, :cond_5

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Ljava/util/Scanner;->position:I

    if-ne v3, v4, :cond_5

    .line 953
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 955
    :cond_5
    if-eqz v0, :cond_a

    .line 962
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->requireEnd()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_8

    .line 966
    :cond_6
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 968
    .local v2, "tokenEnd":I
    if-nez p1, :cond_7

    .line 970
    sget-object p1, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    .line 973
    :cond_7
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 974
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v3, v4, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 975
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 976
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 978
    return-object v1

    .line 963
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "tokenEnd":I
    :cond_8
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    .line 964
    return-object v6

    .line 980
    .restart local v2    # "tokenEnd":I
    :cond_9
    return-object v6

    .line 986
    .end local v2    # "tokenEnd":I
    :cond_a
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_d

    .line 987
    if-nez p1, :cond_b

    .line 989
    sget-object p1, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    .line 992
    :cond_b
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 993
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    iget-object v5, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 994
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 995
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 996
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 997
    return-object v1

    .line 1000
    .end local v1    # "s":Ljava/lang/String;
    :cond_c
    return-object v6

    .line 1005
    :cond_d
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    .line 1006
    return-object v6
.end method

.method private hasTokenInBuffer()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 883
    iput-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    .line 884
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 885
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Ljava/util/Scanner;->position:I

    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 888
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 892
    :cond_0
    iget v0, p0, Ljava/util/Scanner;->position:I

    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 893
    return v3

    .line 895
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private integerPattern()Ljava/util/regex/Pattern;
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-direct {p0}, Ljava/util/Scanner;->buildIntegerPatternString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 492
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static linePattern()Ljava/util/regex/Pattern;
    .locals 2

    .prologue
    .line 512
    sget-object v0, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    .line 513
    .local v0, "lp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_0

    .line 514
    const-string/jumbo v1, ".*(\r\n|[\n\r\u2028\u2029\u0085])|.+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    .line 515
    :cond_0
    return-object v0
.end method

.method private static makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;
    .locals 1
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 646
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static makeReadable(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/Readable;
    .locals 1
    .param p0, "source"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    .line 728
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
    .param p0, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "dec"    # Ljava/nio/charset/CharsetDecoder;

    .prologue
    .line 701
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method private makeSpace()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 838
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 839
    iget v3, p0, Ljava/util/Scanner;->savedScannerPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 840
    iget v2, p0, Ljava/util/Scanner;->position:I

    .line 841
    .local v2, "offset":I
    :goto_0
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 843
    if-lez v2, :cond_1

    .line 844
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 845
    invoke-direct {p0, v2}, Ljava/util/Scanner;->translateSavedIndexes(I)V

    .line 846
    iget v3, p0, Ljava/util/Scanner;->position:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 847
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 848
    return v5

    .line 840
    .end local v2    # "offset":I
    :cond_0
    iget v2, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .restart local v2    # "offset":I
    goto :goto_0

    .line 851
    :cond_1
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v1, v3, 0x2

    .line 852
    .local v1, "newSize":I
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 853
    .local v0, "newBuf":Ljava/nio/CharBuffer;
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 854
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 855
    invoke-direct {p0, v2}, Ljava/util/Scanner;->translateSavedIndexes(I)V

    .line 856
    iget v3, p0, Ljava/util/Scanner;->position:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 857
    iput-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    .line 858
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 859
    return v5
.end method

.method private matchPatternInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1059
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1060
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Ljava/util/Scanner;->position:I

    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1061
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1062
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v0, :cond_1

    .line 1067
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 1068
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1064
    :cond_1
    iput-boolean v4, p0, Ljava/util/Scanner;->needInput:Z

    .line 1065
    return-object v3

    .line 1071
    :cond_2
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v0, :cond_3

    .line 1072
    return-object v3

    .line 1075
    :cond_3
    iput-boolean v4, p0, Ljava/util/Scanner;->needInput:Z

    .line 1076
    return-object v3
.end method

.method private processFloatToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 2256
    iget-object v9, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    const-string/jumbo v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2257
    .local v7, "result":Ljava/lang/String;
    iget-object v9, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    const-string/jumbo v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2258
    iget-object v9, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    const-string/jumbo v10, "."

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2259
    :cond_0
    const/4 v3, 0x0

    .line 2260
    .local v3, "isNegative":Z
    iget-object v9, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 2261
    .local v6, "preLen":I
    if-lez v6, :cond_1

    iget-object v9, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2262
    const/4 v3, 0x1

    .line 2263
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2265
    :cond_1
    iget-object v9, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 2266
    .local v8, "sufLen":I
    if-lez v8, :cond_2

    iget-object v9, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2267
    const/4 v3, 0x1

    .line 2268
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v8

    .line 2269
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    .line 2268
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2271
    :cond_2
    iget-object v9, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2272
    const-string/jumbo v7, "NaN"

    .line 2273
    :cond_3
    iget-object v9, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2274
    const-string/jumbo v7, "Infinity"

    .line 2276
    :cond_4
    const-string/jumbo v9, "\u221e"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2277
    const-string/jumbo v7, "Infinity"

    .line 2278
    :cond_5
    if-eqz v3, :cond_6

    .line 2279
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2282
    :cond_6
    sget-object v9, Ljava/util/Scanner;->NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2283
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2285
    .local v2, "inASCII":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_9

    .line 2286
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2287
    .local v5, "nextChar":C
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2288
    const/16 v9, 0xa

    invoke-static {v5, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2289
    .local v0, "d":I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_7

    .line 2290
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2285
    .end local v0    # "d":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2292
    .restart local v0    # "d":I
    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2294
    .end local v0    # "d":I
    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2297
    .end local v5    # "nextChar":C
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2300
    .end local v1    # "i":I
    .end local v2    # "inASCII":Ljava/lang/StringBuilder;
    :cond_a
    return-object v7
.end method

.method private processIntegerToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 2057
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

    .line 2058
    .local v2, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2059
    .local v0, "isNegative":Z
    iget-object v4, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 2060
    .local v1, "preLen":I
    if-lez v1, :cond_0

    iget-object v4, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2061
    const/4 v0, 0x1

    .line 2062
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2064
    :cond_0
    iget-object v4, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 2065
    .local v3, "sufLen":I
    if-lez v3, :cond_1

    iget-object v4, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2066
    const/4 v0, 0x1

    .line 2067
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 2068
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 2067
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2070
    :cond_1
    if-eqz v0, :cond_2

    .line 2071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2072
    :cond_2
    return-object v2
.end method

.method private readInput()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 803
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->capacity()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 804
    invoke-direct {p0}, Ljava/util/Scanner;->makeSpace()Z

    .line 807
    :cond_0
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 808
    .local v2, "p":I
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 809
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 811
    const/4 v1, 0x0

    .line 813
    .local v1, "n":I
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-interface {v3, v4}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 819
    :goto_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 820
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    .line 821
    iput-boolean v5, p0, Ljava/util/Scanner;->needInput:Z

    .line 824
    :cond_1
    if-lez v1, :cond_2

    .line 825
    iput-boolean v5, p0, Ljava/util/Scanner;->needInput:Z

    .line 828
    :cond_2
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 829
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 832
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 802
    return-void

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    .line 816
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private revertState()V
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 755
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 753
    return-void
.end method

.method private revertState(Z)Z
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 760
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 761
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 762
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 763
    return p1
.end method

.method private saveState()V
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Ljava/util/Scanner;->position:I

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 749
    return-void
.end method

.method private static separatorPattern()Ljava/util/regex/Pattern;
    .locals 2

    .prologue
    .line 505
    sget-object v0, Ljava/util/Scanner;->separatorPattern:Ljava/util/regex/Pattern;

    .line 506
    .local v0, "sp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_0

    .line 507
    const-string/jumbo v1, "\r\n|[\n\r\u2028\u2029\u0085]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->separatorPattern:Ljava/util/regex/Pattern;

    .line 508
    :cond_0
    return-object v0
.end method

.method private setRadix(I)V
    .locals 3
    .param p1, "radix"    # I

    .prologue
    .line 1278
    const/16 v0, 0x24

    if-le p1, v0, :cond_0

    .line 1279
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

    .line 1282
    :cond_0
    iget v0, p0, Ljava/util/Scanner;->radix:I

    if-eq v0, p1, :cond_1

    .line 1284
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 1285
    iput p1, p0, Ljava/util/Scanner;->radix:I

    .line 1276
    :cond_1
    return-void
.end method

.method private throwFor()V
    .locals 2

    .prologue
    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 873
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/util/Scanner;->position:I

    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 874
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 876
    :cond_0
    new-instance v0, Ljava/util/InputMismatchException;

    invoke-direct {v0}, Ljava/util/InputMismatchException;-><init>()V

    throw v0
.end method

.method private static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "csn"    # Ljava/lang/String;

    .prologue
    .line 636
    const-string/jumbo v1, "charsetName"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 638
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 639
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 689
    if-nez p0, :cond_0

    .line 690
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "charsetName == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
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

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private translateSavedIndexes(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 865
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 866
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 864
    :cond_0
    return-void
.end method

.method private useTypeCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 794
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_0

    .line 795
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Scanner closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_0
    iget v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 797
    iput-object v1, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 798
    iput-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 793
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1101
    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v1, :cond_0

    .line 1102
    return-void

    .line 1103
    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 1105
    :try_start_0
    iget-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    :cond_1
    :goto_0
    iput-boolean v2, p0, Ljava/util/Scanner;->sourceClosed:Z

    .line 1111
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    .line 1112
    iput-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    .line 1100
    return-void

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    goto :goto_0
.end method

.method public delimiter()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public findInLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1583
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
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1605
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1606
    if-nez p1, :cond_0

    .line 1607
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1608
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1610
    const/4 v0, 0x0

    .line 1611
    .local v0, "endPosition":I
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1613
    :goto_0
    invoke-static {}, Ljava/util/Scanner;->separatorPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Ljava/util/Scanner;->findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v2

    .line 1614
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1615
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 1625
    :goto_1
    invoke-direct {p0}, Ljava/util/Scanner;->revertState()V

    .line 1626
    iget v3, p0, Ljava/util/Scanner;->position:I

    sub-int v1, v0, v3

    .line 1630
    .local v1, "horizonForLine":I
    if-nez v1, :cond_3

    .line 1631
    return-object v4

    .line 1618
    .end local v1    # "horizonForLine":I
    :cond_1
    iget-boolean v3, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v3, :cond_2

    .line 1619
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    .line 1621
    :cond_2
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    goto :goto_1

    .line 1633
    .restart local v1    # "horizonForLine":I
    :cond_3
    invoke-virtual {p0, p1, v1}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "horizon"    # I

    .prologue
    .line 1651
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
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "horizon"    # I

    .prologue
    const/4 v2, 0x0

    .line 1685
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1686
    if-nez p1, :cond_0

    .line 1687
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1688
    :cond_0
    if-gez p2, :cond_1

    .line 1689
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "horizon < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1690
    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1694
    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/util/Scanner;->findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    .line 1695
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1696
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1697
    return-object v0

    .line 1699
    :cond_2
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_3

    .line 1700
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    .line 1704
    :cond_3
    return-object v2
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 1351
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1352
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1353
    :goto_0
    iget-boolean v1, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v1, :cond_1

    .line 1354
    invoke-direct {p0}, Ljava/util/Scanner;->hasTokenInBuffer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v1

    return v1

    .line 1356
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    .line 1358
    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->hasTokenInBuffer()Z

    move-result v0

    .line 1359
    .local v0, "result":Z
    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v1

    return v1
.end method

.method public hasNext(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1417
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
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1450
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1451
    if-nez p1, :cond_0

    .line 1452
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1453
    :cond_0
    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 1454
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1457
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1458
    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1459
    invoke-direct {p0}, Ljava/util/Scanner;->cacheResult()V

    .line 1460
    invoke-direct {p0, v1}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v0

    return v0

    .line 1462
    :cond_1
    iget-boolean v0, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v0, :cond_2

    .line 1463
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    .line 1465
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v0

    return v0
.end method

.method public hasNextBigDecimal()Z
    .locals 4

    .prologue
    .line 2555
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    .line 2556
    invoke-direct {p0}, Ljava/util/Scanner;->decimalPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 2557
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 2559
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2560
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2565
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 2561
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 2562
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_0
.end method

.method public hasNextBigInteger()Z
    .locals 1

    .prologue
    .line 2451
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextBigInteger(I)Z

    move-result v0

    return v0
.end method

.method public hasNextBigInteger(I)Z
    .locals 5
    .param p1, "radix"    # I

    .prologue
    .line 2466
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2467
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 2468
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 2470
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2471
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2473
    .local v2, "s":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 2478
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 2472
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 2474
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2475
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_1
.end method

.method public hasNextBoolean()Z
    .locals 1

    .prologue
    .line 1780
    invoke-static {}, Ljava/util/Scanner;->boolPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNextByte()Z
    .locals 1

    .prologue
    .line 1810
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextByte(I)Z

    move-result v0

    return v0
.end method

.method public hasNextByte(I)Z
    .locals 5
    .param p1, "radix"    # I

    .prologue
    .line 1824
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 1825
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 1826
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 1828
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1829
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1831
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 1836
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 1830
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1832
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1833
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_1
.end method

.method public hasNextDouble()Z
    .locals 6

    .prologue
    .line 2380
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    .line 2381
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 2382
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 2384
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2385
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2390
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 2386
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 2387
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_0
.end method

.method public hasNextFloat()Z
    .locals 4

    .prologue
    .line 2313
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    .line 2314
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 2315
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 2317
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2318
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2323
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 2319
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 2320
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_0
.end method

.method public hasNextInt()Z
    .locals 1

    .prologue
    .line 2022
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextInt(I)Z

    move-result v0

    return v0
.end method

.method public hasNextInt(I)Z
    .locals 5
    .param p1, "radix"    # I

    .prologue
    .line 2036
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2037
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 2038
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 2040
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2041
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2043
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 2048
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 2042
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 2044
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2045
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_1
.end method

.method public hasNextLine()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1515
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1517
    invoke-static {}, Ljava/util/Scanner;->linePattern()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v2

    .line 1518
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1519
    invoke-virtual {p0}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v1

    .line 1520
    .local v1, "mr":Ljava/util/regex/MatchResult;
    invoke-interface {v1, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1521
    .local v0, "lineSep":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1522
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 1523
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1522
    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1524
    invoke-direct {p0, v2}, Ljava/util/Scanner;->cacheResult(Ljava/lang/String;)V

    .line 1530
    .end local v0    # "lineSep":Ljava/lang/String;
    .end local v1    # "mr":Ljava/util/regex/MatchResult;
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljava/util/Scanner;->revertState()V

    .line 1531
    if-eqz v2, :cond_2

    :goto_1
    return v3

    .line 1527
    .restart local v0    # "lineSep":Ljava/lang/String;
    .restart local v1    # "mr":Ljava/util/regex/MatchResult;
    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->cacheResult()V

    goto :goto_0

    .end local v0    # "lineSep":Ljava/lang/String;
    .end local v1    # "mr":Ljava/util/regex/MatchResult;
    :cond_2
    move v3, v4

    .line 1531
    goto :goto_1
.end method

.method public hasNextLong()Z
    .locals 1

    .prologue
    .line 2152
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextLong(I)Z

    move-result v0

    return v0
.end method

.method public hasNextLong(I)Z
    .locals 6
    .param p1, "radix"    # I

    .prologue
    .line 2166
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2167
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 2168
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 2170
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2171
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2173
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 2178
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 2172
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 2174
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2175
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_1
.end method

.method public hasNextShort()Z
    .locals 1

    .prologue
    .line 1916
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextShort(I)Z

    move-result v0

    return v0
.end method

.method public hasNextShort(I)Z
    .locals 5
    .param p1, "radix"    # I

    .prologue
    .line 1930
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 1931
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 1932
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 1934
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1935
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1937
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 1942
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 1936
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1938
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1939
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_1
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public match()Ljava/util/regex/MatchResult;
    .locals 2

    .prologue
    .line 1309
    iget-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    if-nez v0, :cond_0

    .line 1310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No match result available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1311
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1374
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1375
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1376
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1379
    :goto_0
    invoke-direct {p0, v2}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 1380
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1381
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1382
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    .line 1383
    return-object v0

    .line 1385
    :cond_0
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_1

    .line 1386
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    .line 1388
    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->throwFor()V

    goto :goto_0
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1435
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
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 1482
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1483
    if-nez p1, :cond_0

    .line 1484
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1487
    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    if-ne v1, p1, :cond_1

    .line 1488
    invoke-direct {p0}, Ljava/util/Scanner;->getCachedResult()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1489
    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1493
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 1494
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1495
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1496
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    .line 1497
    return-object v0

    .line 1499
    :cond_2
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_3

    .line 1500
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    .line 1502
    :cond_3
    invoke-direct {p0}, Ljava/util/Scanner;->throwFor()V

    goto :goto_0
.end method

.method public nextBigDecimal()Ljava/math/BigDecimal;
    .locals 5

    .prologue
    .line 2590
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/math/BigDecimal;

    if-eqz v3, :cond_0

    .line 2591
    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v2, Ljava/math/BigDecimal;

    .line 2592
    .local v2, "val":Ljava/math/BigDecimal;
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2593
    return-object v2

    .line 2595
    .end local v2    # "val":Ljava/math/BigDecimal;
    :cond_0
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    .line 2596
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2599
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->decimalPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2600
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 2601
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2602
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 2603
    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextBigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 2498
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public nextBigInteger(I)Ljava/math/BigInteger;
    .locals 5
    .param p1, "radix"    # I

    .prologue
    .line 2524
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/math/BigInteger;

    if-eqz v3, :cond_0

    .line 2525
    iget v3, p0, Ljava/util/Scanner;->radix:I

    if-ne v3, p1, :cond_0

    .line 2526
    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v2, Ljava/math/BigInteger;

    .line 2527
    .local v2, "val":Ljava/math/BigInteger;
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2528
    return-object v2

    .line 2530
    .end local v2    # "val":Ljava/math/BigInteger;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2531
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2534
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 2535
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2536
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2537
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 2538
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2539
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 2540
    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextBoolean()Z
    .locals 1

    .prologue
    .line 1796
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1797
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

    .prologue
    .line 1855
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextByte(I)B

    move-result v0

    return v0
.end method

.method public nextByte(I)B
    .locals 5
    .param p1, "radix"    # I

    .prologue
    .line 1886
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Byte;

    if-eqz v3, :cond_0

    .line 1887
    iget v3, p0, Ljava/util/Scanner;->radix:I

    if-ne v3, p1, :cond_0

    .line 1888
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 1889
    .local v2, "val":B
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 1890
    return v2

    .line 1892
    .end local v2    # "val":B
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 1893
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1896
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1897
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1898
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1899
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1900
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1901
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 1902
    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextDouble()D
    .locals 6

    .prologue
    .line 2422
    iget-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 2423
    iget-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 2424
    .local v2, "val":D
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2425
    return-wide v2

    .line 2427
    .end local v2    # "val":D
    :cond_0
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2428
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2431
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

    .line 2432
    :catch_0
    move-exception v0

    .line 2433
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2434
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextFloat()F
    .locals 4

    .prologue
    .line 2355
    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_0

    .line 2356
    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2357
    .local v1, "val":F
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2358
    return v1

    .line 2360
    .end local v1    # "val":F
    :cond_0
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Ljava/util/Scanner;->setRadix(I)V

    .line 2361
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2363
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

    .line 2364
    :catch_0
    move-exception v0

    .line 2365
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->position:I

    .line 2366
    new-instance v2, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 2091
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 5
    .param p1, "radix"    # I

    .prologue
    .line 2122
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 2123
    iget v3, p0, Ljava/util/Scanner;->radix:I

    if-ne v3, p1, :cond_0

    .line 2124
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2125
    .local v2, "val":I
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2126
    return v2

    .line 2128
    .end local v2    # "val":I
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2129
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2132
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 2133
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2134
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2135
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2136
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2137
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 2138
    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextLine()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1551
    iget-object v3, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    invoke-static {}, Ljava/util/Scanner;->linePattern()Ljava/util/regex/Pattern;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1552
    invoke-direct {p0}, Ljava/util/Scanner;->getCachedResult()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1553
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1555
    sget-object v3, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v3, v5}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v2

    .line 1556
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1557
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string/jumbo v4, "No line found"

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1558
    :cond_1
    invoke-virtual {p0}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v1

    .line 1559
    .local v1, "mr":Ljava/util/regex/MatchResult;
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1560
    .local v0, "lineSep":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1561
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1562
    :cond_2
    if-nez v2, :cond_3

    .line 1563
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 1565
    :cond_3
    return-object v2
.end method

.method public nextLong()J
    .locals 2

    .prologue
    .line 2197
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(I)J
    .locals 6
    .param p1, "radix"    # I

    .prologue
    .line 2228
    iget-object v4, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 2229
    iget v4, p0, Ljava/util/Scanner;->radix:I

    if-ne v4, p1, :cond_0

    .line 2230
    iget-object v4, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2231
    .local v2, "val":J
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2232
    return-wide v2

    .line 2234
    .end local v2    # "val":J
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2235
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2237
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 2238
    .local v1, "s":Ljava/lang/String;
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v5, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2239
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2240
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 2241
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2242
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    iput v4, p0, Ljava/util/Scanner;->position:I

    .line 2243
    new-instance v4, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public nextShort()S
    .locals 1

    .prologue
    .line 1961
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextShort(I)S

    move-result v0

    return v0
.end method

.method public nextShort(I)S
    .locals 5
    .param p1, "radix"    # I

    .prologue
    .line 1992
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Short;

    if-eqz v3, :cond_0

    .line 1993
    iget v3, p0, Ljava/util/Scanner;->radix:I

    if-ne v3, p1, :cond_0

    .line 1994
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v2

    .line 1995
    .local v2, "val":S
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 1996
    return v2

    .line 1998
    .end local v2    # "val":S
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 1999
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2002
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 2003
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2004
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2005
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2006
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2007
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 2008
    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public radix()I
    .locals 1

    .prologue
    .line 1241
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1400
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()Ljava/util/Scanner;
    .locals 1

    .prologue
    .line 2629
    sget-object v0, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 2630
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    .line 2631
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useRadix(I)Ljava/util/Scanner;

    .line 2632
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2633
    return-object p0
.end method

.method public skip(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1764
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
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 1731
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1732
    if-nez p1, :cond_0

    .line 1733
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1734
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1738
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->matchPatternInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 1739
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1740
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1741
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 1742
    return-object p0

    .line 1744
    :cond_1
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_2

    .line 1745
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_0

    .line 1747
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1323
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "java.util.Scanner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    const-string/jumbo v1, "[delimiters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    const-string/jumbo v1, "[position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    const-string/jumbo v1, "[match valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->matchValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    const-string/jumbo v1, "[need input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    const-string/jumbo v1, "[source closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->sourceClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    const-string/jumbo v1, "[skipped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->skipped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    const-string/jumbo v1, "[group separator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    const-string/jumbo v1, "[decimal separator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    const-string/jumbo v1, "[positive prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    const-string/jumbo v1, "[negative prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    const-string/jumbo v1, "[positive suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    const-string/jumbo v1, "[negative suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    const-string/jumbo v1, "[NaN string="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    const-string/jumbo v1, "[infinity string="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1162
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 1163
    return-object p0
.end method

.method public useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 1143
    iput-object p1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 1144
    return-object p0
.end method

.method public useLocale(Ljava/util/Locale;)Ljava/util/Scanner;
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x0

    .line 1193
    iget-object v2, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1194
    return-object p0

    .line 1196
    :cond_0
    iput-object p1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 1198
    invoke-static {p1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 1199
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    .line 1203
    .local v1, "dfs":Ljava/text/DecimalFormatSymbols;
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

    .line 1204
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

    .line 1208
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

    .line 1209
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

    .line 1210
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    .line 1211
    iget-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1212
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

    .line 1213
    :cond_1
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    .line 1214
    iget-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1215
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

    .line 1216
    :cond_2
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 1217
    iget-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1218
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

    .line 1219
    :cond_3
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 1220
    iget-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1221
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

    .line 1225
    :cond_4
    iput-object v4, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 1226
    iput-object v4, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    .line 1228
    return-object p0
.end method

.method public useRadix(I)Ljava/util/Scanner;
    .locals 3
    .param p1, "radix"    # I

    .prologue
    .line 1263
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x24

    if-le p1, v0, :cond_1

    .line 1264
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

    .line 1266
    :cond_1
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    if-ne v0, p1, :cond_2

    .line 1267
    return-object p0

    .line 1268
    :cond_2
    iput p1, p0, Ljava/util/Scanner;->defaultRadix:I

    .line 1270
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 1271
    return-object p0
.end method
