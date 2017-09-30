.class public Lcom/android/contacts/common/format/TextHighlighter;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/contacts/common/format/TextHighlighter;->a:I

    invoke-direct {p0}, Lcom/android/contacts/common/format/TextHighlighter;->a()Landroid/text/style/CharacterStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/format/TextHighlighter;->b:Landroid/text/style/CharacterStyle;

    return-void
.end method

.method private a()Landroid/text/style/CharacterStyle;
    .locals 2

    new-instance v0, Landroid/text/style/StyleSpan;

    iget v1, p0, Lcom/android/contacts/common/format/TextHighlighter;->a:I

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/contacts/common/format/FormatUtils;->a(Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/contacts/common/format/TextHighlighter;->b:Landroid/text/style/CharacterStyle;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v3, v2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v0

    goto :goto_0
.end method

.method public a(Landroid/text/SpannableString;II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/contacts/common/format/TextHighlighter;->a()Landroid/text/style/CharacterStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/format/TextHighlighter;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
