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

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Formatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0, p3, p1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, p3, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 2

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    invoke-direct {p0, v1, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 2

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Formatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Formatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Formatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, v1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;Ljava/lang/Appendable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    iput-object p1, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Formatter;->getZero(Ljava/util/Locale;)C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter;->zero:C

    return-void
.end method

.method private ensureOpen()V
    .locals 1

    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/FormatterClosedException;

    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private static getZero(Ljava/util/Locale;)C
    .locals 2

    if-eqz p0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x30

    return v1

    :cond_1
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    return v1
.end method

.method private static final nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private parse(Ljava/lang/String;)[Ljava/util/Formatter$FormatString;
    .locals 10

    const/16 v9, 0x25

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_1

    move v6, v2

    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    move v5, v3

    :goto_1
    new-instance v7, Ljava/util/Formatter$FixedString;

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Ljava/util/Formatter$FixedString;-><init>(Ljava/util/Formatter;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/Formatter$FormatSpecifierParser;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v1, p0, p1, v7}, Ljava/util/Formatter$FormatSpecifierParser;-><init>(Ljava/util/Formatter;Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifier()Ljava/util/Formatter$FormatSpecifier;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/Formatter$FormatSpecifierParser;->getEndIdx()I

    move-result v2

    goto :goto_0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

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

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iput-object v2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iput-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    throw v1
.end method

.method public flush()V
    .locals 2

    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Flushable;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Flushable;

    invoke-interface {v1}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    goto :goto_0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 1

    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 10

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {p0, p2}, Ljava/util/Formatter;->parse(Ljava/lang/String;)[Ljava/util/Formatter$FormatString;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_7

    aget-object v0, v1, v2

    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->index()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v4, v3, -0x1

    if-eqz p3, :cond_5

    :try_start_0
    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-le v4, v7, :cond_5

    new-instance v7, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v6

    iput-object v6, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_1

    :pswitch_1
    if-ltz v4, :cond_0

    if-eqz p3, :cond_1

    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-le v4, v7, :cond_1

    :cond_0
    new-instance v7, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    if-nez p3, :cond_2

    move-object v7, v8

    :goto_2
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_1

    :cond_2
    aget-object v7, p3, v4

    goto :goto_2

    :pswitch_2
    add-int/lit8 v5, v5, 0x1

    move v4, v5

    if-eqz p3, :cond_3

    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-le v5, v7, :cond_3

    new-instance v7, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    if-nez p3, :cond_4

    move-object v7, v8

    :goto_3
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_1

    :cond_4
    aget-object v7, p3, v5

    goto :goto_3

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

    :cond_7
    return-object p0

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

    iget-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    return-object v0
.end method

.method public out()Ljava/lang/Appendable;
    .locals 1

    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
