.class public Lcom/android/launcher2/searchapp/PrefixHighlighterImplCHN;
.super Ljava/lang/Object;
.source "PrefixHighlighterImplCHN.java"


# instance fields
.field private mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mPrefixStyleSpan:Landroid/text/style/StyleSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doApply(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 9

    const/4 v8, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1, p2}, Lcom/android/launcher2/searchapp/format/FormatUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    new-array v3, v6, [I

    invoke-static {p1, p2, v3}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->findPosToPinyin(Ljava/lang/CharSequence;Ljava/lang/String;[I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/searchapp/PrefixHighlighterImplCHN;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v6, :cond_2

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/android/launcher2/searchapp/PrefixHighlighterImplCHN;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/searchapp/PrefixHighlighterImplCHN;->mPrefixStyleSpan:Landroid/text/style/StyleSpan;

    if-nez v6, :cond_3

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v6, p0, Lcom/android/launcher2/searchapp/PrefixHighlighterImplCHN;->mPrefixStyleSpan:Landroid/text/style/StyleSpan;

    :cond_3
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_6

    if-eqz v0, :cond_4

    aget v6, v3, v0

    if-eqz v6, :cond_5

    :cond_4
    aget v5, v3, v8

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget v6, v3, v6

    add-int/lit8 v1, v6, 0x1

    if-lt v1, v5, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/searchapp/PrefixHighlighterImplCHN;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v4, v6, v5, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Lcom/android/launcher2/searchapp/PrefixHighlighterImplCHN;->mPrefixStyleSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {v4, v6, v5, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move-object p1, v4

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/launcher2/searchapp/PrefixHighlighterImplCHN;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v6, :cond_8

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/android/launcher2/searchapp/PrefixHighlighterImplCHN;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    :cond_8
    iget-object v6, p0, Lcom/android/launcher2/searchapp/PrefixHighlighterImplCHN;->mPrefixStyleSpan:Landroid/text/style/StyleSpan;

    if-nez v6, :cond_9

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v6, p0, Lcom/android/launcher2/searchapp/PrefixHighlighterImplCHN;->mPrefixStyleSpan:Landroid/text/style/StyleSpan;

    :cond_9
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/launcher2/searchapp/PrefixHighlighterImplCHN;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v4, v6, v2, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Lcom/android/launcher2/searchapp/PrefixHighlighterImplCHN;->mPrefixStyleSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v4, v6, v2, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v4

    goto/16 :goto_0
.end method
