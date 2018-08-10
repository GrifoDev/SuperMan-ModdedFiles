.class Lcom/samsung/android/settings/search/model/SecSettingSearch$RankComparator;
.super Ljava/lang/Object;
.source "SecSettingSearch.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/model/SecSettingSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RankComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/settings/search/SearchResultItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/search/model/SecSettingSearch$RankComparator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/search/model/SecSettingSearch$RankComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/search/SearchResultItem;Lcom/samsung/android/settings/search/SearchResultItem;)I
    .locals 2

    iget v0, p1, Lcom/samsung/android/settings/search/SearchResultItem;->rank:I

    iget v1, p2, Lcom/samsung/android/settings/search/SearchResultItem;->rank:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p1, Lcom/samsung/android/settings/search/SearchResultItem;->rank:I

    iget v1, p2, Lcom/samsung/android/settings/search/SearchResultItem;->rank:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    iget v0, p1, Lcom/samsung/android/settings/search/SearchResultItem;->rank:I

    iget v1, p2, Lcom/samsung/android/settings/search/SearchResultItem;->rank:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/settings/search/SearchResultItem;

    check-cast p2, Lcom/samsung/android/settings/search/SearchResultItem;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/search/model/SecSettingSearch$RankComparator;->compare(Lcom/samsung/android/settings/search/SearchResultItem;Lcom/samsung/android/settings/search/SearchResultItem;)I

    move-result v0

    return v0
.end method
