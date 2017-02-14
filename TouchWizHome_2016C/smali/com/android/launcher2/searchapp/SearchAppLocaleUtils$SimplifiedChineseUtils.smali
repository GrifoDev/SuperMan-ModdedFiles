.class Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SimplifiedChineseUtils;
.super Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;
.source "SearchAppLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimplifiedChineseUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;-><init>()V

    return-void
.end method

.method private static getPinyinNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v12, 0x20

    const/4 v11, 0x0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v6, -0x1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;

    const-string v8, "SearchAppLocaleUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "token.source = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "token.target = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "token.type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->type:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x3

    iget v9, v5, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->type:I

    if-ne v8, v9, :cond_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    iget v9, v5, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->type:I

    if-ne v8, v9, :cond_2

    iget-object v8, v5, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v11, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v11, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    iget-object v8, v5, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v2, v11, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    iget v9, v5, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->type:I

    if-ne v8, v9, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v8, v5, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v3, v11, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v11, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public getConsistKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SimplifiedChineseUtils;->getPinyinNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
