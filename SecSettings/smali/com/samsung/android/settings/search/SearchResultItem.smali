.class public Lcom/samsung/android/settings/search/SearchResultItem;
.super Ljava/lang/Object;
.source "SearchResultItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/settings/search/SearchResultItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Ljava/lang/String;

.field public final breadcrumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final category_id:Ljava/lang/String;

.field public final className:Ljava/lang/String;

.field public final entries:Ljava/lang/String;

.field public final extras:Landroid/os/Bundle;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public iconResId:I

.field public final key:Ljava/lang/String;

.field public final keywords:Ljava/lang/String;

.field public final menu_path:Ljava/lang/String;

.field public final menu_type:I

.field public final payload:Lcom/android/settings/search2/ResultPayload;

.field public final rank:I

.field public final rankPath:Ljava/lang/String;

.field public final screenTitle:Ljava/lang/String;

.field public final stableId:J

.field public final summary:Ljava/lang/String;

.field public final targetCls:Ljava/lang/String;

.field public final targetPkg:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final titleEn:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method protected constructor <init>(Lcom/samsung/android/settings/search/SearchResultItem$Builder;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mSummary:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->summary:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mBreadcrumbs:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->breadcrumbs:Ljava/util/List;

    iget v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mRank:I

    iput v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->rank:I

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mResultPayload:Lcom/android/settings/search2/ResultPayload;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->payload:Lcom/android/settings/search2/ResultPayload;

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->payload:Lcom/android/settings/search2/ResultPayload;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->payload:Lcom/android/settings/search2/ResultPayload;

    invoke-virtual {v0}, Lcom/android/settings/search2/ResultPayload;->getType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->viewType:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/search/SearchResultItem;->summary:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/search/SearchResultItem;->breadcrumbs:Ljava/util/List;

    aput-object v1, v0, v4

    iget v1, p0, Lcom/samsung/android/settings/search/SearchResultItem;->rank:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lcom/samsung/android/settings/search/SearchResultItem;->viewType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->stableId:J

    :goto_0
    iget v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mIconResId:I

    iput v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->iconResId:I

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->key:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mKeywords:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->keywords:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mTargetPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->targetPkg:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mTargetCls:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->targetCls:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mEntries:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->entries:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mScreenTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->screenTitle:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->className:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mMenu_type:I

    iput v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->menu_type:I

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mMenu_path:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->menu_path:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mCategory_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->category_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mAction:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->action:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->extras:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mTitleEn:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->titleEn:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mRankPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->rankPath:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->viewType:I

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/search/SearchResultItem;->summary:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/search/SearchResultItem;->breadcrumbs:Ljava/util/List;

    aput-object v1, v0, v4

    iget v1, p0, Lcom/samsung/android/settings/search/SearchResultItem;->rank:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->stableId:J

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/settings/search/SearchResultItem;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->rank:I

    iget v1, p1, Lcom/samsung/android/settings/search/SearchResultItem;->rank:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/settings/search/SearchResultItem;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/SearchResultItem;->compareTo(Lcom/samsung/android/settings/search/SearchResultItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v2, p1, Lcom/samsung/android/settings/search/SearchResultItem;

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/samsung/android/settings/search/SearchResultItem;->stableId:J

    check-cast p1, Lcom/samsung/android/settings/search/SearchResultItem;

    iget-wide v4, p1, Lcom/samsung/android/settings/search/SearchResultItem;->stableId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getRootRank()I
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/search/SearchResultItem;->rankPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/search/SearchResultItem;->rankPath:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v5

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    :cond_0
    return v5
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/search/SearchResultItem;->stableId:J

    long-to-int v0, v0

    return v0
.end method
