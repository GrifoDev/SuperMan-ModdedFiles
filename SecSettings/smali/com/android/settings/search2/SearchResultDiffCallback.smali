.class public Lcom/android/settings/search2/SearchResultDiffCallback;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "SearchResultDiffCallback.java"


# instance fields
.field private mNewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mOldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    iput-object p1, p0, Lcom/android/settings/search2/SearchResultDiffCallback;->mOldList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/search2/SearchResultDiffCallback;->mNewList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search2/SearchResultDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search2/SearchResult;

    iget-object v1, p0, Lcom/android/settings/search2/SearchResultDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/SearchResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search2/SearchResultDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search2/SearchResult;

    iget-object v1, p0, Lcom/android/settings/search2/SearchResultDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/SearchResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getNewListSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/SearchResultDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/SearchResultDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
