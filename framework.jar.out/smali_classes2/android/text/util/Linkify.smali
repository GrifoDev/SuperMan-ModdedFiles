.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$1;,
        Landroid/text/util/Linkify$2;,
        Landroid/text/util/Linkify$3;,
        Landroid/text/util/Linkify$4;,
        Landroid/text/util/Linkify$MatchFilter;,
        Landroid/text/util/Linkify$TransformFilter;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final MAP_ADDRESSES:I = 0x8

.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final SEM_ALL_MIXED_CJK:I = 0x500a

.field public static final SEM_ALL_MIXED_KOR:I = 0x600a

.field public static final SEM_PHONE_NUMBERS_CJK:I = 0x8000

.field public static final SEM_PHONE_NUMBERS_KOR:I = 0x4000

.field public static final SEM_WEB_URLS_CJK:I = 0x1000

.field public static final SEM_WEB_URLS_KOR:I = 0x2000

.field public static final WEB_URLS:I = 0x1

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberMatchFilterEX:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilterEX:Landroid/text/util/Linkify$MatchFilter;

    new-instance v0, Landroid/text/util/Linkify$4;

    invoke-direct {v0}, Landroid/text/util/Linkify$4;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 16

    if-nez p1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/style/URLSpan;

    array-length v2, v14

    add-int/lit8 v8, v2, -0x1

    :goto_0
    if-ltz v8, :cond_1

    aget-object v2, v14, v8

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    sget-object v3, Landroid/util/Patterns;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "http://"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v2, "https://"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string/jumbo v2, "rtsp://"

    const/4 v5, 0x2

    aput-object v2, v4, v5

    sget-object v5, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_2
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_a

    sget-object v3, Landroid/util/Patterns;->WEB_URL_EX:Ljava/util/regex/Pattern;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "http://"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v2, "https://"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string/jumbo v2, "rtsp://"

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const-string/jumbo v2, "ftp://"

    const/4 v5, 0x3

    aput-object v2, v4, v5

    sget-object v5, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/util/LinkSpec;

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v10, Landroid/text/util/LinkSpec;->start:I

    iget v4, v10, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "www."

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "www."

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "http://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "https://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "rtsp://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "ftp://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    :goto_2
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    iget v2, v10, Landroid/text/util/LinkSpec;->start:I

    const-string/jumbo v3, "www."

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v10, Landroid/text/util/LinkSpec;->start:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v4, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const-string/jumbo v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v10, Landroid/text/util/LinkSpec;->start:I

    iget v5, v10, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    :cond_4
    :goto_3
    const-string/jumbo v2, "."

    invoke-virtual {v12, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_3

    const-string/jumbo v2, "http://api.map.baidu.com/marker?location="

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    add-int/lit8 v2, v15, 0x1

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v8, 0x0

    :goto_4
    array-length v2, v7

    if-ge v8, v2, :cond_5

    aget-char v2, v7, v8

    const/16 v3, 0x80

    if-lt v2, v3, :cond_9

    :cond_5
    array-length v2, v7

    if-ge v8, v2, :cond_3

    iget v2, v10, Landroid/text/util/LinkSpec;->end:I

    array-length v3, v7

    sub-int/2addr v3, v8

    sub-int/2addr v2, v3

    iput v2, v10, Landroid/text/util/LinkSpec;->end:I

    iget-object v2, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v3, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    array-length v4, v7

    sub-int/2addr v4, v8

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v2, "wap."

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "wap."

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "http://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "https://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "rtsp://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "ftp://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    :goto_5
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    iget v2, v10, Landroid/text/util/LinkSpec;->start:I

    const-string/jumbo v3, "wap."

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v10, Landroid/text/util/LinkSpec;->start:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v4, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const-string/jumbo v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v10, Landroid/text/util/LinkSpec;->start:I

    iget v5, v10, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_a
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_15

    sget-object v3, Landroid/util/Patterns;->WEB_URL_KR:Ljava/util/regex/Pattern;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "http://"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v2, "https://"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string/jumbo v2, "rtsp://"

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const-string/jumbo v2, "ftp://"

    const/4 v5, 0x3

    aput-object v2, v4, v5

    sget-object v5, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    const/4 v9, 0x0

    :cond_b
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_15

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/util/LinkSpec;

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v10, Landroid/text/util/LinkSpec;->start:I

    iget v4, v10, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, ".ht"

    invoke-virtual {v12, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v2

    iget v3, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_f

    const-string/jumbo v2, "tp"

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v10, Landroid/text/util/LinkSpec;->end:I

    iget v5, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v9, 0x1

    if-le v2, v3, :cond_e

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/text/util/LinkSpec;

    iget v2, v13, Landroid/text/util/LinkSpec;->start:I

    iget v3, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v3, v3, 0x5

    if-ne v2, v3, :cond_c

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v2

    iget v3, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v3, v3, 0x5

    if-le v2, v3, :cond_c

    const-string/jumbo v2, "tp://"

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v10, Landroid/text/util/LinkSpec;->end:I

    iget v5, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    iget v2, v13, Landroid/text/util/LinkSpec;->start:I

    iget v3, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v3, v3, 0x6

    if-ne v2, v3, :cond_e

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v2

    iget v3, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v3, v3, 0x6

    if-le v2, v3, :cond_e

    const-string/jumbo v2, "tps://"

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v10, Landroid/text/util/LinkSpec;->end:I

    iget v5, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    iget v2, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v13, Landroid/text/util/LinkSpec;->start:I

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v1, v2, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-lez v9, :cond_b

    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_6

    :cond_f
    const-string/jumbo v2, "www."

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v2, "www."

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "http://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "https://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "rtsp://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "ftp://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    :goto_7
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    iget v2, v10, Landroid/text/util/LinkSpec;->start:I

    const-string/jumbo v3, "www."

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v10, Landroid/text/util/LinkSpec;->start:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v4, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const-string/jumbo v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v10, Landroid/text/util/LinkSpec;->start:I

    iget v5, v10, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    :cond_10
    const-string/jumbo v2, "."

    invoke-virtual {v12, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_12

    add-int/lit8 v2, v15, 0x1

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v8, 0x0

    :goto_8
    array-length v2, v7

    if-ge v8, v2, :cond_11

    aget-char v2, v7, v8

    const/16 v3, 0x80

    if-lt v2, v3, :cond_14

    :cond_11
    array-length v2, v7

    if-ge v8, v2, :cond_12

    if-lez v8, :cond_12

    add-int/lit8 v2, v8, -0x1

    aget-char v2, v7, v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_12

    iget v2, v10, Landroid/text/util/LinkSpec;->end:I

    array-length v3, v7

    sub-int/2addr v3, v8

    sub-int/2addr v2, v3

    iput v2, v10, Landroid/text/util/LinkSpec;->end:I

    iget-object v2, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v3, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    array-length v4, v7

    sub-int/2addr v4, v8

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_7

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_15
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_16

    sget-object v3, Landroid/util/Patterns;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "mailto:"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_16
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    invoke-static {v1, v0}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    :cond_17
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_18

    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "tel:"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v6, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_18
    const v2, 0x8000

    and-int v2, v2, p1

    if-eqz v2, :cond_19

    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "tel:"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberMatchFilterEX:Landroid/text/util/Linkify$MatchFilter;

    sget-object v6, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_19
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    invoke-static {v1, v0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    :cond_1a
    invoke-static {v1}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    return v2

    :cond_1b
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/util/LinkSpec;

    iget-object v2, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v3, v10, Landroid/text/util/LinkSpec;->start:I

    iget v4, v10, Landroid/text/util/LinkSpec;->end:I

    move-object/from16 v0, p0

    invoke-static {v2, v3, v4, v0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_9

    :cond_1c
    const/4 v2, 0x1

    return v2
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 12

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    if-eqz p3, :cond_1

    array-length v10, p3

    const/4 v11, 0x1

    if-ge v10, v11, :cond_2

    :cond_1
    sget-object p3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_2
    array-length v10, p3

    add-int/lit8 v10, v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    const/4 v4, 0x0

    :goto_0
    array-length v10, p3

    if-ge v4, v10, :cond_4

    aget-object v6, p3, v4

    add-int/lit8 v11, v4, 0x1

    if-nez v6, :cond_3

    const-string/jumbo v10, ""

    :goto_1
    aput-object v10, v7, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v1, 0x1

    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    invoke-interface {v0, p0, v8, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v1

    :cond_6
    if-eqz v1, :cond_5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-static {v10, v7, v5, v0}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v2, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    return v3
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    return v4

    :cond_1
    return v3

    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v4

    :cond_3
    return v3
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2

    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    new-instance v2, Landroid/text/util/LinkSpec;

    invoke-direct {v2}, Landroid/text/util/LinkSpec;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iput v3, v2, Landroid/text/util/LinkSpec;->start:I

    iput v0, v2, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-static {v9}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v7, Landroid/text/util/LinkSpec;

    invoke-direct {v7}, Landroid/text/util/LinkSpec;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int v5, v8, v6

    add-int v10, v1, v8

    iput v10, v7, Landroid/text/util/LinkSpec;->start:I

    add-int v10, v1, v5

    iput v10, v7, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    add-int/2addr v1, v5

    const/4 v4, 0x0

    :try_start_1
    const-string/jumbo v10, "UTF-8"

    invoke-static {v0, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "geo:0,0?q="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    return-void

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private static final gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    new-instance v9, Landroid/text/util/LinkSpec;

    invoke-direct {v9}, Landroid/text/util/LinkSpec;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->start:I

    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-nez v7, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Landroid/text/util/Linkify$5;

    invoke-direct {v2}, Landroid/text/util/Linkify$5;-><init>()V

    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/LinkSpec;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/LinkSpec;

    const/4 v5, -0x1

    iget v6, v0, Landroid/text/util/LinkSpec;->start:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-le v6, v7, :cond_3

    iget v6, v1, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_1

    add-int/lit8 v5, v3, 0x1

    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    :cond_2
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    move v5, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
