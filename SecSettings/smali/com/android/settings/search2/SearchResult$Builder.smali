.class public Lcom/android/settings/search2/SearchResult$Builder;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search2/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mBreadcrumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mRank:I

.field protected mResultPayload:Lcom/android/settings/search2/ResultPayload;

.field protected mSummary:Ljava/lang/CharSequence;

.field protected mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    iput v0, p0, Lcom/android/settings/search2/SearchResult$Builder;->mRank:I

    return-void
.end method


# virtual methods
.method public addBreadcrumbs(Ljava/util/List;)Lcom/android/settings/search2/SearchResult$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/settings/search2/SearchResult$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/search2/SearchResult$Builder;->mBreadcrumbs:Ljava/util/List;

    return-object p0
.end method

.method public addIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/search2/SearchResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/SearchResult$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public addPayload(Lcom/android/settings/search2/ResultPayload;)Lcom/android/settings/search2/SearchResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/SearchResult$Builder;->mResultPayload:Lcom/android/settings/search2/ResultPayload;

    return-object p0
.end method

.method public addRank(I)Lcom/android/settings/search2/SearchResult$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/android/settings/search2/SearchResult$Builder;->mRank:I

    :cond_0
    return-object p0
.end method

.method public addSummary(Ljava/lang/CharSequence;)Lcom/android/settings/search2/SearchResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/SearchResult$Builder;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public addTitle(Ljava/lang/CharSequence;)Lcom/android/settings/search2/SearchResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/SearchResult$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public build()Lcom/android/settings/search2/SearchResult;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search2/SearchResult$Builder;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SearchResult missing title argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/search2/SearchResult$Builder;->mResultPayload:Lcom/android/settings/search2/ResultPayload;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SearchResult missing Payload argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/android/settings/search2/SearchResult;

    invoke-direct {v0, p0}, Lcom/android/settings/search2/SearchResult;-><init>(Lcom/android/settings/search2/SearchResult$Builder;)V

    return-object v0
.end method
