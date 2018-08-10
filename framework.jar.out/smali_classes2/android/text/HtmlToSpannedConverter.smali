.class Landroid/text/HtmlToSpannedConverter;
.super Ljava/lang/Object;
.source "Html.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/HtmlToSpannedConverter$Alignment;,
        Landroid/text/HtmlToSpannedConverter$Background;,
        Landroid/text/HtmlToSpannedConverter$Big;,
        Landroid/text/HtmlToSpannedConverter$Blockquote;,
        Landroid/text/HtmlToSpannedConverter$Bold;,
        Landroid/text/HtmlToSpannedConverter$Bullet;,
        Landroid/text/HtmlToSpannedConverter$Font;,
        Landroid/text/HtmlToSpannedConverter$Foreground;,
        Landroid/text/HtmlToSpannedConverter$Heading;,
        Landroid/text/HtmlToSpannedConverter$Href;,
        Landroid/text/HtmlToSpannedConverter$Italic;,
        Landroid/text/HtmlToSpannedConverter$Monospace;,
        Landroid/text/HtmlToSpannedConverter$Newline;,
        Landroid/text/HtmlToSpannedConverter$Small;,
        Landroid/text/HtmlToSpannedConverter$Strikethrough;,
        Landroid/text/HtmlToSpannedConverter$Sub;,
        Landroid/text/HtmlToSpannedConverter$Super;,
        Landroid/text/HtmlToSpannedConverter$Underline;
    }
.end annotation


# static fields
.field private static final HEADING_SIZES:[F

.field private static sBackgroundColorPattern:Ljava/util/regex/Pattern;

.field private static final sColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sForegroundColorPattern:Ljava/util/regex/Pattern;

.field private static sTextAlignPattern:Ljava/util/regex/Pattern;

.field private static sTextDecorationPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mFlags:I

.field private mImageGetter:Landroid/text/Html$ImageGetter;

.field private mReader:Lorg/xml/sax/XMLReader;

.field private mSource:Ljava/lang/String;

.field private mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mTagHandler:Landroid/text/Html$TagHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const v5, -0x2c2c2d

    const v4, -0x565657

    const v3, -0x7f7f80

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->HEADING_SIZES:[F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkgray"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const-string/jumbo v1, "gray"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightgray"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkgrey"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const-string/jumbo v1, "grey"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightgrey"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const-string/jumbo v1, "green"

    const v2, -0xff8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3fb33333    # 1.4f
        0x3fa66666    # 1.3f
        0x3f99999a    # 1.2f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/HtmlToSpannedConverter;->mSource:Ljava/lang/String;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iput-object p2, p0, Landroid/text/HtmlToSpannedConverter;->mImageGetter:Landroid/text/Html$ImageGetter;

    iput-object p3, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    iput-object p4, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    iput p5, p0, Landroid/text/HtmlToSpannedConverter;->mFlags:I

    return-void
.end method

.method private static appendNewlines(Landroid/text/Editable;I)V
    .locals 6

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_1
    if-ge v2, p1, :cond_2

    const-string/jumbo v4, "\n"

    invoke-interface {p0, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {p0, p1}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static endA(Landroid/text/Editable;)V
    .locals 4

    const-class v1, Landroid/text/HtmlToSpannedConverter$Href;

    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Href;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/text/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Landroid/text/style/URLSpan;

    iget-object v3, v0, Landroid/text/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static endBlockElement(Landroid/text/Editable;)V
    .locals 5

    const-class v2, Landroid/text/HtmlToSpannedConverter$Newline;

    invoke-static {p0, v2}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/HtmlToSpannedConverter$Newline;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/HtmlToSpannedConverter$Newline;->-get0(Landroid/text/HtmlToSpannedConverter$Newline;)I

    move-result v2

    invoke-static {p0, v2}, Landroid/text/HtmlToSpannedConverter;->appendNewlines(Landroid/text/Editable;I)V

    invoke-interface {p0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    const-class v2, Landroid/text/HtmlToSpannedConverter$Alignment;

    invoke-static {p0, v2}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Alignment;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Landroid/text/style/AlignmentSpan$Standard;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter$Alignment;->-get0(Landroid/text/HtmlToSpannedConverter$Alignment;)Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v0, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static endBlockquote(Landroid/text/Editable;)V
    .locals 2

    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    const-class v0, Landroid/text/HtmlToSpannedConverter$Blockquote;

    new-instance v1, Landroid/text/style/QuoteSpan;

    invoke-direct {v1}, Landroid/text/style/QuoteSpan;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private static endCssStyle(Landroid/text/Editable;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-class v3, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    invoke-static {p0, v3}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    if-eqz v2, :cond_0

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    aput-object v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    const-class v3, Landroid/text/HtmlToSpannedConverter$Background;

    invoke-static {p0, v3}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Background;

    if-eqz v0, :cond_1

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter$Background;->-get0(Landroid/text/HtmlToSpannedConverter$Background;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    aput-object v4, v3, v6

    invoke-static {p0, v0, v3}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_1
    const-class v3, Landroid/text/HtmlToSpannedConverter$Foreground;

    invoke-static {p0, v3}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/HtmlToSpannedConverter$Foreground;

    if-eqz v1, :cond_2

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v1}, Landroid/text/HtmlToSpannedConverter$Foreground;->-get0(Landroid/text/HtmlToSpannedConverter$Foreground;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v4, v3, v6

    invoke-static {p0, v1, v3}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static endFont(Landroid/text/Editable;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-class v2, Landroid/text/HtmlToSpannedConverter$Font;

    invoke-static {p0, v2}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Font;

    if-eqz v0, :cond_0

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Landroid/text/style/TypefaceSpan;

    iget-object v4, v0, Landroid/text/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    invoke-static {p0, v0, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    const-class v2, Landroid/text/HtmlToSpannedConverter$Foreground;

    invoke-static {p0, v2}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/HtmlToSpannedConverter$Foreground;

    if-eqz v1, :cond_1

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v1}, Landroid/text/HtmlToSpannedConverter$Foreground;->-get0(Landroid/text/HtmlToSpannedConverter$Foreground;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static endHeading(Landroid/text/Editable;)V
    .locals 6

    const/4 v5, 0x1

    const-class v1, Landroid/text/HtmlToSpannedConverter$Heading;

    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Heading;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    sget-object v3, Landroid/text/HtmlToSpannedConverter;->HEADING_SIZES:[F

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter$Heading;->-get0(Landroid/text/HtmlToSpannedConverter$Heading;)I

    move-result v4

    aget v3, v3, v4

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v2, v1, v5

    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    return-void
.end method

.method private static endLi(Landroid/text/Editable;)V
    .locals 2

    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endCssStyle(Landroid/text/Editable;)V

    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    const-class v0, Landroid/text/HtmlToSpannedConverter$Bullet;

    new-instance v1, Landroid/text/style/BulletSpan;

    invoke-direct {v1}, Landroid/text/style/BulletSpan;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private static getBackgroundColorPattern()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string/jumbo v0, "(?:\\s+|\\A)background(?:-color)?\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static getForegroundColorPattern()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string/jumbo v0, "(?:\\s+|\\A)color\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private getHtmlColor(Ljava/lang/String;)I
    .locals 3

    iget v1, p0, Landroid/text/HtmlToSpannedConverter;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    sget-object v1, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->getHtmlColor(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-interface {p0, v2, v1, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private getMargin(I)I
    .locals 1

    iget v0, p0, Landroid/text/HtmlToSpannedConverter;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private getMarginBlockquote()I
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private getMarginDiv()I
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private getMarginHeading()I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private getMarginList()I
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private getMarginListItem()I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private getMarginParagraph()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private static getTextAlignPattern()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextAlignPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string/jumbo v0, "(?:\\s+|\\A)text-align\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sTextAlignPattern:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextAlignPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static getTextDecorationPattern()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string/jumbo v0, "(?:\\s+|\\A)text-decoration\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static handleBr(Landroid/text/Editable;)V
    .locals 1

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    return-void
.end method

.method private handleEndTag(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    const-string/jumbo v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->handleBr(Landroid/text/Editable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endCssStyle(Landroid/text/Editable;)V

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endLi(Landroid/text/Editable;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "span"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endCssStyle(Landroid/text/Editable;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Bold;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Bold;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Big;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Small;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endFont(Landroid/text/Editable;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockquote(Landroid/text/Editable;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Monospace;

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endA(Landroid/text/Editable;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Underline;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v0, "del"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v0, "strike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Super;

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Sub;

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_19

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_19

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_19

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_19

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endHeading(Landroid/text/Editable;)V

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v5, p1, v1, v2}, Landroid/text/Html$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    goto/16 :goto_0
.end method

.method private handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginParagraph()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginList()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startLi(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginDiv()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "span"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Bold;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Bold;-><init>(Landroid/text/HtmlToSpannedConverter$Bold;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Bold;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Bold;-><init>(Landroid/text/HtmlToSpannedConverter$Bold;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Big;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Big;-><init>(Landroid/text/HtmlToSpannedConverter$Big;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Small;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Small;-><init>(Landroid/text/HtmlToSpannedConverter$Small;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startFont(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startBlockquote(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Monospace;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Monospace;-><init>(Landroid/text/HtmlToSpannedConverter$Monospace;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p2}, Landroid/text/HtmlToSpannedConverter;->startA(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Underline;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Underline;-><init>(Landroid/text/HtmlToSpannedConverter$Underline;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v0, "del"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter$Strikethrough;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter$Strikethrough;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v0, "strike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter$Strikethrough;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Super;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Super;-><init>(Landroid/text/HtmlToSpannedConverter$Super;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Sub;

    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Sub;-><init>(Landroid/text/HtmlToSpannedConverter$Sub;)V

    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_19

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_19

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_19

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x31

    invoke-direct {p0, v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startHeading(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mImageGetter:Landroid/text/Html$ImageGetter;

    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startImg(Landroid/text/Editable;Lorg/xml/sax/Attributes;Landroid/text/Html$ImageGetter;)V

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v3, p1, v1, v2}, Landroid/text/Html$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    goto/16 :goto_0
.end method

.method private static varargs setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6

    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    if-eq v2, v0, :cond_0

    const/4 v3, 0x0

    array-length v4, p2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p2, v3

    const/16 v5, 0x21

    invoke-interface {p0, v1, v2, v0, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static start(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x11

    invoke-interface {p0, p1, v0, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static startA(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 3

    const-string/jumbo v1, ""

    const-string/jumbo v2, "href"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/HtmlToSpannedConverter$Href;

    invoke-direct {v1, v0}, Landroid/text/HtmlToSpannedConverter$Href;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    return-void
.end method

.method private static startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V
    .locals 6

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez p2, :cond_0

    invoke-static {p0, p2}, Landroid/text/HtmlToSpannedConverter;->appendNewlines(Landroid/text/Editable;I)V

    new-instance v4, Landroid/text/HtmlToSpannedConverter$Newline;

    invoke-direct {v4, p2}, Landroid/text/HtmlToSpannedConverter$Newline;-><init>(I)V

    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v4, ""

    const-string/jumbo v5, "style"

    invoke-interface {p1, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getTextAlignPattern()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "start"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Landroid/text/HtmlToSpannedConverter$Alignment;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v4, "center"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Landroid/text/HtmlToSpannedConverter$Alignment;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "end"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/text/HtmlToSpannedConverter$Alignment;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startBlockquote(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 2

    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginBlockquote()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    new-instance v0, Landroid/text/HtmlToSpannedConverter$Blockquote;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/HtmlToSpannedConverter$Blockquote;-><init>(Landroid/text/HtmlToSpannedConverter$Blockquote;)V

    invoke-static {p1, v0}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    return-void
.end method

.method private startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/high16 v7, -0x1000000

    const/4 v6, 0x1

    const-string/jumbo v4, ""

    const-string/jumbo v5, "style"

    invoke-interface {p2, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getForegroundColorPattern()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/text/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_0

    new-instance v4, Landroid/text/HtmlToSpannedConverter$Foreground;

    or-int v5, v0, v7

    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Foreground;-><init>(I)V

    invoke-static {p1, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getBackgroundColorPattern()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/text/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_1

    new-instance v4, Landroid/text/HtmlToSpannedConverter$Background;

    or-int v5, v0, v7

    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Background;-><init>(I)V

    invoke-static {p1, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getTextDecorationPattern()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "line-through"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    invoke-direct {v4, v9}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter$Strikethrough;)V

    invoke-static {p1, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private startFont(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 5

    const-string/jumbo v3, ""

    const-string/jumbo v4, "color"

    invoke-interface {p2, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    const-string/jumbo v4, "face"

    invoke-interface {p2, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Landroid/text/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    new-instance v3, Landroid/text/HtmlToSpannedConverter$Foreground;

    const/high16 v4, -0x1000000

    or-int/2addr v4, v0

    invoke-direct {v3, v4}, Landroid/text/HtmlToSpannedConverter$Foreground;-><init>(I)V

    invoke-static {p1, v3}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Landroid/text/HtmlToSpannedConverter$Font;

    invoke-direct {v3, v2}, Landroid/text/HtmlToSpannedConverter$Font;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private startHeading(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V
    .locals 1

    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginHeading()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    new-instance v0, Landroid/text/HtmlToSpannedConverter$Heading;

    invoke-direct {v0, p3}, Landroid/text/HtmlToSpannedConverter$Heading;-><init>(I)V

    invoke-static {p1, v0}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    return-void
.end method

.method private static startImg(Landroid/text/Editable;Lorg/xml/sax/Attributes;Landroid/text/Html$ImageGetter;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, ""

    const-string/jumbo v4, "src"

    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2, v2}, Landroid/text/Html$ImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080b7c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const-string/jumbo v3, "\ufffc"

    invoke-interface {p0, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-interface {p0, v3, v1, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private startLi(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 2

    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginListItem()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    new-instance v0, Landroid/text/HtmlToSpannedConverter$Bullet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/HtmlToSpannedConverter$Bullet;-><init>(Landroid/text/HtmlToSpannedConverter$Bullet;)V

    invoke-static {p1, v0}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroid/text/HtmlToSpannedConverter;->startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v8, 0xa

    const/16 v7, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_5

    add-int v5, v1, p2

    aget-char v0, p1, v5

    if-eq v0, v7, :cond_0

    if-ne v0, v8, :cond_4

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v5, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v3, 0xa

    :goto_1
    if-eq v3, v7, :cond_1

    if-eq v3, v8, :cond_1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget-object v5, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public convert()Landroid/text/Spanned;
    .locals 12

    const/16 v11, 0xa

    const/4 v10, 0x0

    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v6, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :try_start_0
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    new-instance v7, Lorg/xml/sax/InputSource;

    new-instance v8, Ljava/io/StringReader;

    iget-object v9, p0, Landroid/text/HtmlToSpannedConverter;->mSource:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-virtual {v6, v10, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    const/4 v3, 0x0

    :goto_0
    array-length v6, v4

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v6, v2, -0x2

    if-ltz v6, :cond_0

    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_0

    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v2, -0x2

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    if-ne v2, v5, :cond_1

    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_1
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v7, v4, v3

    const/16 v8, 0x33

    invoke-virtual {v6, v7, v5, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    return-object v6
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/text/HtmlToSpannedConverter;->handleEndTag(Ljava/lang/String;)V

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0, p2, p4}, Landroid/text/HtmlToSpannedConverter;->handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
