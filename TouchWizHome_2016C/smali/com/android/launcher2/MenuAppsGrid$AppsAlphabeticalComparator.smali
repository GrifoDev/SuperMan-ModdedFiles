.class final Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AppsAlphabeticalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/AppItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method

.method private longCompare(JJ)I
    .locals 3

    const/4 v0, 0x0

    cmp-long v1, p1, p3

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmp-long v1, p1, p3

    if-gez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I
    .locals 10

    const/4 v6, 0x1

    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkIsChinaModel()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/launcher2/Utilities;->isChineseAsLocaleDefault()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v4, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v6, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v6, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_0
    :goto_2
    if-nez v1, :cond_1

    iget-wide v6, p1, Lcom/android/launcher2/AppItem;->mId:J

    iget-wide v8, p2, Lcom/android/launcher2/AppItem;->mId:J

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;->longCompare(JJ)I

    move-result v1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v5, v0, v6}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v2, v6}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v6, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_5
    if-eq v0, v2, :cond_0

    if-nez v0, :cond_6

    const/4 v1, -0x1

    :goto_3
    goto :goto_2

    :cond_6
    move v1, v6

    goto :goto_3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher2/AppItem;

    check-cast p2, Lcom/android/launcher2/AppItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;->compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I

    move-result v0

    return v0
.end method

.method public updateCollator()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method
