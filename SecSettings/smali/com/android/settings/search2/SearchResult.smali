.class public Lcom/android/settings/search2/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search2/SearchResult$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/search2/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
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

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final payload:Lcom/android/settings/search2/ResultPayload;

.field public final rank:I

.field public final stableId:J

.field public final summary:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;

.field public final viewType:I


# direct methods
.method protected constructor <init>(Lcom/android/settings/search2/SearchResult$Builder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/settings/search2/SearchResult$Builder;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/search2/SearchResult;->title:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/settings/search2/SearchResult$Builder;->mSummary:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/search2/SearchResult;->summary:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/settings/search2/SearchResult$Builder;->mBreadcrumbs:Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/search2/SearchResult;->breadcrumbs:Ljava/util/List;

    iget v0, p1, Lcom/android/settings/search2/SearchResult$Builder;->mRank:I

    iput v0, p0, Lcom/android/settings/search2/SearchResult;->rank:I

    iget-object v0, p1, Lcom/android/settings/search2/SearchResult$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/search2/SearchResult;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/android/settings/search2/SearchResult$Builder;->mResultPayload:Lcom/android/settings/search2/ResultPayload;

    iput-object v0, p0, Lcom/android/settings/search2/SearchResult;->payload:Lcom/android/settings/search2/ResultPayload;

    iget-object v0, p0, Lcom/android/settings/search2/SearchResult;->payload:Lcom/android/settings/search2/ResultPayload;

    invoke-virtual {v0}, Lcom/android/settings/search2/ResultPayload;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search2/SearchResult;->viewType:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/search2/SearchResult;->title:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/search2/SearchResult;->summary:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/search2/SearchResult;->breadcrumbs:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/search2/SearchResult;->rank:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/search2/SearchResult;->viewType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/settings/search2/SearchResult;->stableId:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/search2/SearchResult;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/search2/SearchResult;->rank:I

    iget v1, p1, Lcom/android/settings/search2/SearchResult;->rank:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/search2/SearchResult;

    invoke-virtual {p0, p1}, Lcom/android/settings/search2/SearchResult;->compareTo(Lcom/android/settings/search2/SearchResult;)I

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
    instance-of v2, p1, Lcom/android/settings/search2/SearchResult;

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/android/settings/search2/SearchResult;->stableId:J

    check-cast p1, Lcom/android/settings/search2/SearchResult;

    iget-wide v4, p1, Lcom/android/settings/search2/SearchResult;->stableId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/search2/SearchResult;->stableId:J

    long-to-int v0, v0

    return v0
.end method
