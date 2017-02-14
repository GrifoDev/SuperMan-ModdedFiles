.class Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SecSearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultsAdapter"
.end annotation


# instance fields
.field private hooking:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mContextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mQuery:Ljava/lang/String;

.field private realCnt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->realCnt:I

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->hooking:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    return-void
.end method

.method private calculateOptimumPositionForHighlight(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->findOptimumTextKeywordPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    const-string/jumbo v1, "SearchResultsSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private constructList()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v21, ""

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getCountFromDB()I

    move-result v23

    const/16 v19, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->realCnt:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getItemFromDB(I)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v22, v20

    check-cast v22, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v2, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->realCnt:I

    move/from16 v0, v23

    if-ne v2, v0, :cond_5

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v2, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->realCnt:I

    sub-int v5, v23, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0b01d4

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->realCnt:I

    move/from16 v19, v0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getItemFromDB(I)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_6

    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v22, v20

    check-cast v22, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-void
.end method

.method private findOptimumTextKeywordPosition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 15

    new-instance v11, Ljava/util/StringTokenizer;

    const-string/jumbo v13, " "

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, ""

    const/4 v3, -0x1

    const/4 v2, -0x1

    const/4 v5, -0x1

    const/4 v4, -0x1

    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    const/4 v7, 0x0

    move-object/from16 v8, p1

    :goto_1
    const-string/jumbo v13, " "

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    new-instance v12, Ljava/util/StringTokenizer;

    const-string/jumbo v13, " "

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    if-ge v1, v7, :cond_2

    move v1, v7

    :cond_2
    const/4 v13, -0x1

    if-eq v1, v13, :cond_7

    move v3, v1

    :cond_3
    return v3

    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v13, -0x1

    if-eq v5, v13, :cond_5

    if-lt v5, v2, :cond_6

    :cond_5
    invoke-direct {p0, v9, v6, v10}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->isCurrentStrHasPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    move v5, v2

    move-object v6, v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int v4, v7, v13

    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v7, v13

    goto :goto_2

    :cond_7
    const/4 v13, -0x1

    if-eq v3, v13, :cond_8

    if-le v3, v4, :cond_0

    :cond_8
    move v3, v4

    goto/16 :goto_0
.end method

.method private getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return-object v3

    :cond_1
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v0, p2, v2}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v1

    if-nez v1, :cond_2

    return-object v3

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private isCurrentStrHasPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v9, :cond_0

    if-ne v4, v9, :cond_1

    :cond_0
    return v8

    :cond_1
    if-le v3, v4, :cond_2

    return v8

    :cond_2
    if-ne v3, v4, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int v2, v5, v6

    if-gez v2, :cond_4

    return v7

    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_4
    if-lez v2, :cond_5

    return v8

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v7

    :cond_7
    return v7
.end method

.method private setQueryText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0xd2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_3

    const/4 v1, 0x0

    invoke-direct {p0, p3, p2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->calculateOptimumPositionForHighlight(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, p3, p2, p1, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->makeSpanString(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;I)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v0, v4}, Landroid/widget/TextView;->semSetEllipsize(Landroid/text/TextUtils$TruncateAt;II)V

    :goto_0
    const-string/jumbo v3, "SearchResultsSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "spanStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v3

    if-ne v3, v5, :cond_5

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCountFromDB()I
    .locals 3

    iget-boolean v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemFromDB(I)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0x6

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0xd

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0x7

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0xe

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0xf

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0x10

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0x9

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v25, 0x11

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    const/16 v19, 0x0

    if-eqz v20, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v24

    move-object/from16 v0, v20

    array-length v3, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v19

    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V

    :cond_0
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    :cond_2
    :goto_0
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v9, 0x7f0200fa

    :goto_1
    new-instance v3, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    invoke-direct/range {v3 .. v19}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v3

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    if-nez v4, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v21

    const-string/jumbo v3, "SearchResultsSummary"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot create Context for package: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_4
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method public getItemId(I)J
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_0
    check-cast v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    iget v1, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    int-to-long v2, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    if-nez p2, :cond_0

    new-instance v18, Ljava/lang/IllegalStateException;

    const-string/jumbo v19, "this should only be called when the cursor is valid"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    if-nez p2, :cond_2

    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f040265

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    :goto_0
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const v18, 0x7f11060f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v17

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f040267

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v17, p2

    goto :goto_1

    :cond_3
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f040265

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    :goto_2
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f040267

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    goto :goto_2

    :cond_5
    const v18, 0x7f1100e5

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v18, 0x7f1101f7

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v18, 0x7f1100e4

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->setQueryText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v5, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->className:Ljava/lang/String;

    iget-object v9, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    const-string/jumbo v12, "com.android.settings"

    if-nez v5, :cond_6

    iget-object v12, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->targetPkg:Ljava/lang/String;

    iget-object v5, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->targetCls:Ljava/lang/String;

    :cond_6
    const-string/jumbo v18, "com.google.android.gms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const v18, 0x7f02045d

    move/from16 v0, v18

    iput v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->iconResId:I

    :cond_7
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->iconResId:I

    move/from16 v18, v0

    const v19, 0x7f0200fa

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    const/16 v18, 0x0

    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v18, "com.android.settings"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string/jumbo v18, "com.google.android.gms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->iconResId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_4
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->category_id:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_9
    :goto_5
    return-object v17

    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v14, v1, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->setQueryText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v11

    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->iconResId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->getOutsideTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_0
    move-exception v10

    const-string/jumbo v18, "SearchResultsSummary"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Cannot load Drawable for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0107

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v7

    const-string/jumbo v18, "SearchResultsSummary"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Cannot load Drawable for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_e
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v18, 0x7f0200fa

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5
.end method

.method public isEnabled(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected makeSpanString(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;I)Landroid/text/SpannableString;
    .locals 16

    new-instance v7, Landroid/text/SpannableString;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Ljava/util/StringTokenizer;

    const-string/jumbo v12, " "

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->getAutoCompleteColor(Landroid/content/Context;)I

    move-result v3

    if-lez p4, :cond_0

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v10, p2

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v10, v11}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    move-object v11, v5

    :cond_1
    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v12, v13, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int v4, v9, v12

    :goto_1
    if-ltz v9, :cond_0

    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v12, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v13, p4, v9

    add-int/2addr v13, v2

    add-int v14, p4, v4

    add-int/2addr v14, v2

    const/16 v15, 0x21

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    add-int/2addr v2, v4

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int v4, v9, v12

    goto :goto_1

    :cond_3
    return-object v7
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    return-void
.end method

.method public setRealCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->realCnt:I

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->constructList()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->notifyDataSetChanged()V

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
