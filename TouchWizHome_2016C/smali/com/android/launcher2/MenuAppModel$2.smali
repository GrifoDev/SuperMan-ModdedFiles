.class final Lcom/android/launcher2/MenuAppModel$2;
.super Ljava/lang/Object;
.source "MenuAppModel.java"

# interfaces
.implements Lcom/android/launcher2/MenuAppModel$Normalizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher2/MenuAppModel$Normalizer",
        "<",
        "Lcom/android/launcher2/AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I
    .locals 9

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v7, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v7, v8, :cond_3

    iget-object v7, p2, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v7, v8, :cond_3

    const/4 v0, -0x1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_c

    iget-object v4, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_c

    iget-wide v4, p1, Lcom/android/launcher2/AppItem;->mId:J

    iget-wide v6, p2, Lcom/android/launcher2/AppItem;->mId:J

    # invokes: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher2/MenuAppModel;->access$200(JJ)I

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$100()Ljava/text/Collator;

    move-result-object v4

    iget-object v5, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v6, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v6}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-wide v4, p1, Lcom/android/launcher2/AppItem;->mId:J

    iget-wide v6, p2, Lcom/android/launcher2/AppItem;->mId:J

    # invokes: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher2/MenuAppModel;->access$200(JJ)I

    move-result v0

    :cond_2
    return v0

    :cond_3
    iget-object v7, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v7, v8, :cond_4

    iget-object v7, p2, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v7, v8, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v7, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkIsChinaModel()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/launcher2/Utilities;->isChineseAsLocaleDefault()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    :goto_2
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v2, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    :goto_3
    # getter for: Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$100()Ljava/text/Collator;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$100()Ljava/text/Collator;

    move-result-object v4

    iget-object v7, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iget-object v8, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    iget-object v4, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    # getter for: Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$100()Ljava/text/Collator;

    move-result-object v4

    iget-object v7, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iget-object v8, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_8
    iget-object v7, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iget-object v8, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-eq v7, v8, :cond_0

    iget-object v7, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_a

    iget-object v7, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v0, v4

    :goto_4
    goto/16 :goto_0

    :cond_9
    move v0, v5

    goto :goto_4

    :cond_a
    iget-object v7, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v0, v4

    goto :goto_4

    :cond_b
    move v0, v6

    goto :goto_4

    :cond_c
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v7, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eq v4, v7, :cond_1

    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v4, :cond_d

    move v0, v5

    :goto_5
    goto/16 :goto_1

    :cond_d
    move v0, v6

    goto :goto_5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher2/AppItem;

    check-cast p2, Lcom/android/launcher2/AppItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppModel$2;->compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I

    move-result v0

    return v0
.end method

.method public normalize(Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;IZ)V"
        }
    .end annotation

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget v1, v0, Lcom/android/launcher2/AppItem;->mScreenInAlphabetical:I

    if-ne v1, v3, :cond_1

    iget v5, v0, Lcom/android/launcher2/AppItem;->mCellInAlphabetical:I

    if-eq v5, v2, :cond_2

    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    iput v3, v0, Lcom/android/launcher2/AppItem;->mScreenInAlphabetical:I

    iput v2, v0, Lcom/android/launcher2/AppItem;->mCellInAlphabetical:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-ne v2, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MenuAppModel.MENU_ALPHA_NORMALIZER"

    return-object v0
.end method
