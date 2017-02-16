.class public final Ljava/util/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$BigDecimalLayoutForm;,
        Ljava/util/Formatter$Conversion;,
        Ljava/util/Formatter$DateTime;,
        Ljava/util/Formatter$FixedString;,
        Ljava/util/Formatter$Flags;,
        Ljava/util/Formatter$FormatSpecifier;,
        Ljava/util/Formatter$FormatSpecifierParser;,
        Ljava/util/Formatter$FormatString;
    }
.end annotation


# static fields
.field private static final MAX_FD_CHARS:I = 0x1e

.field private static scaleUp:D


# instance fields
.field private a:Ljava/lang/Appendable;

.field private final l:Ljava/util/Locale;

.field private lastException:Ljava/io/IOException;

.field private final zero:C


# direct methods
.method static synthetic -get0(Ljava/util/Formatter;)Ljava/lang/Appendable;
    .locals 1

    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/Formatter;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic -get2()D
    .locals 2

    sget-wide v0, Ljava/util/Formatter;->scaleUp:D

    return-wide v0
.end method

.method static synthetic -get3(Ljava/util/Formatter;)C
    .locals 1

    iget-char v0, p0, Ljava/util/Formatter;->zero:C

    return v0
.end method

.method static synthetic -set0(D)D
    .locals 0

    sput-wide p0, Ljava/util/Formatter;->scaleUp:D

    return-wide p0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1901
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1900
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 2086
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 2087
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2086
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2085
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2123
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2121
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2162
    invoke-static {p2}, Ljava/util/Formatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0, p3, p1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    .line 2160
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 2198
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 2199
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2198
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2197
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2223
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2221
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2249
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, p3, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2247
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "ps"    # Ljava/io/PrintStream;

    .prologue
    .line 2179
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    .line 2180
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    .line 2179
    invoke-direct {p0, v1, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2178
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Appendable;

    .prologue
    .line 1915
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Formatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1914
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Appendable;
    .param p2, "l"    # Ljava/util/Locale;

    .prologue
    .line 1948
    invoke-static {p1}, Ljava/util/Formatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1947
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1979
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 1980
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1979
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1978
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2016
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2014
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2055
    invoke-static {p2}, Ljava/util/Formatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, v1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    .line 2053
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V
    .locals 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "l"    # Ljava/util/Locale;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1887
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1886
    invoke-direct {p0, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1884
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1931
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "a"    # Ljava/lang/Appendable;

    .prologue
    .line 1877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1878
    iput-object p2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    .line 1879
    iput-object p1, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    .line 1880
    invoke-static {p1}, Ljava/util/Formatter;->getZero(Ljava/util/Locale;)C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter;->zero:C

    .line 1877
    return-void
.end method

.method private ensureOpen()V
    .locals 1

    .prologue
    .line 2377
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    if-nez v0, :cond_0

    .line 2378
    new-instance v0, Ljava/util/FormatterClosedException;

    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    throw v0

    .line 2376
    :cond_0
    return-void
.end method

.method private static getZero(Ljava/util/Locale;)C
    .locals 2
    .param p0, "l"    # Ljava/util/Locale;

    .prologue
    .line 2253
    if-eqz p0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2257
    :cond_0
    const/16 v1, 0x30

    return v1

    .line 2254
    :cond_1
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 2255
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    return v1
.end method

.method private static final nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Appendable;

    .prologue
    .line 1870
    if-nez p0, :cond_0

    .line 1871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0

    .line 1873
    :cond_0
    return-object p0
.end method

.method private parse(Ljava/lang/String;)[Ljava/util/Formatter$FormatString;
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x25

    .line 2511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2512
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Formatter$FormatString;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 2513
    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2514
    .local v4, "nextPercent":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_1

    .line 2517
    move v6, v2

    .line 2518
    .local v6, "plainTextStart":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    move v5, v3

    .line 2519
    .local v5, "plainTextEnd":I
    :goto_1
    new-instance v7, Ljava/util/Formatter$FixedString;

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Ljava/util/Formatter$FixedString;-><init>(Ljava/util/Formatter;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2521
    move v2, v5

    goto :goto_0

    .line 2518
    .end local v5    # "plainTextEnd":I
    :cond_0
    move v5, v4

    .restart local v5    # "plainTextEnd":I
    goto :goto_1

    .line 2524
    .end local v5    # "plainTextEnd":I
    .end local v6    # "plainTextStart":I
    :cond_1
    new-instance v1, Ljava/util/Formatter$FormatSpecifierParser;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v1, p0, p1, v7}, Ljava/util/Formatter$FormatSpecifierParser;-><init>(Ljava/util/Formatter;Ljava/lang/String;I)V

    .line 2525
    .local v1, "fsp":Ljava/util/Formatter$FormatSpecifierParser;
    invoke-virtual {v1}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifier()Ljava/util/Formatter$FormatSpecifier;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2526
    invoke-virtual {v1}, Ljava/util/Formatter$FormatSpecifierParser;->getEndIdx()I

    move-result v2

    goto :goto_0

    .line 2529
    .end local v1    # "fsp":Ljava/util/Formatter$FormatSpecifierParser;
    .end local v4    # "nextPercent":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/util/Formatter$FormatString;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/util/Formatter$FormatString;

    return-object v7
.end method

.method private static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1860
    const-string/jumbo v1, "charsetName"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1862
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1863
    :catch_0
    move-exception v0

    .line 1865
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2364
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    if-nez v1, :cond_0

    .line 2365
    return-void

    .line 2367
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 2368
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2372
    :cond_1
    :goto_0
    iput-object v2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    .line 2363
    return-void

    .line 2369
    :catch_0
    move-exception v0

    .line 2370
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_1
    iput-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2371
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 2372
    iput-object v2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    .line 2371
    throw v1
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 2341
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2342
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Flushable;

    if-eqz v1, :cond_0

    .line 2344
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Flushable;

    invoke-interface {v1}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2340
    :cond_0
    :goto_0
    return-void

    .line 2345
    :catch_0
    move-exception v0

    .line 2346
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    goto :goto_0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2426
    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 10
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 2465
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2468
    const/4 v4, -0x1

    .line 2470
    .local v4, "last":I
    const/4 v5, -0x1

    .line 2472
    .local v5, "lasto":I
    invoke-direct {p0, p2}, Ljava/util/Formatter;->parse(Ljava/lang/String;)[Ljava/util/Formatter$FormatString;

    move-result-object v1

    .line 2473
    .local v1, "fsa":[Ljava/util/Formatter$FormatString;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_7

    .line 2474
    aget-object v0, v1, v2

    .line 2475
    .local v0, "fs":Ljava/util/Formatter$FormatString;
    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->index()I

    move-result v3

    .line 2477
    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    .line 2494
    add-int/lit8 v4, v3, -0x1

    .line 2495
    if-eqz p3, :cond_5

    :try_start_0
    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-le v4, v7, :cond_5

    .line 2496
    new-instance v7, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2500
    :catch_0
    move-exception v6

    .line 2501
    .local v6, "x":Ljava/io/IOException;
    iput-object v6, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    .line 2473
    .end local v6    # "x":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2479
    :pswitch_0
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_1

    .line 2482
    :pswitch_1
    if-ltz v4, :cond_0

    if-eqz p3, :cond_1

    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-le v4, v7, :cond_1

    .line 2483
    :cond_0
    new-instance v7, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2484
    :cond_1
    if-nez p3, :cond_2

    move-object v7, v8

    :goto_2
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_1

    :cond_2
    aget-object v7, p3, v4

    goto :goto_2

    .line 2487
    :pswitch_2
    add-int/lit8 v5, v5, 0x1

    .line 2488
    move v4, v5

    .line 2489
    if-eqz p3, :cond_3

    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-le v5, v7, :cond_3

    .line 2490
    new-instance v7, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2491
    :cond_3
    if-nez p3, :cond_4

    move-object v7, v8

    :goto_3
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_1

    :cond_4
    aget-object v7, p3, v5

    goto :goto_3

    .line 2497
    :cond_5
    if-nez p3, :cond_6

    move-object v7, v8

    :goto_4
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_1

    :cond_6
    aget-object v7, p3, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 2504
    .end local v0    # "fs":Ljava/util/Formatter$FormatString;
    .end local v3    # "index":I
    :cond_7
    return-object p0

    .line 2477
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 2392
    iget-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 2275
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2276
    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    return-object v0
.end method

.method public out()Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 2289
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2290
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2325
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2326
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
