.class public Lcom/samsung/android/settings/search/SearchResultItem$Builder;
.super Ljava/lang/Object;
.source "SearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/SearchResultItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mAction:Ljava/lang/String;

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

.field protected mCategory_id:Ljava/lang/String;

.field protected mClassName:Ljava/lang/String;

.field protected mEntries:Ljava/lang/String;

.field protected mExtras:Landroid/os/Bundle;

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mIconResId:I

.field protected mKey:Ljava/lang/String;

.field protected mKeywords:Ljava/lang/String;

.field protected mMenu_path:Ljava/lang/String;

.field protected mMenu_type:I

.field protected mRank:I

.field public mRankPath:Ljava/lang/String;

.field protected mResultPayload:Lcom/android/settings/search2/ResultPayload;

.field protected mScreenTitle:Ljava/lang/String;

.field protected mSummary:Ljava/lang/String;

.field protected mTargetCls:Ljava/lang/String;

.field protected mTargetPkg:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field protected mTitleEn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    iput v0, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mRank:I

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public addCategoryId(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mCategory_id:Ljava/lang/String;

    return-object p0
.end method

.method public addClassName(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public addEntries(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mEntries:Ljava/lang/String;

    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public addIconRes(I)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mIconResId:I

    return-object p0
.end method

.method public addKey(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public addKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public addMenuPath(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mMenu_path:Ljava/lang/String;

    return-object p0
.end method

.method public addMenuType(I)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mMenu_type:I

    return-object p0
.end method

.method public addPayload(Lcom/android/settings/search2/ResultPayload;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mResultPayload:Lcom/android/settings/search2/ResultPayload;

    return-object p0
.end method

.method public addRankPath(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mRankPath:Ljava/lang/String;

    return-object p0
.end method

.method public addScreenTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mScreenTitle:Ljava/lang/String;

    return-object p0
.end method

.method public addSummary(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public addTargetCls(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mTargetCls:Ljava/lang/String;

    return-object p0
.end method

.method public addTargetPkg(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mTargetPkg:Ljava/lang/String;

    return-object p0
.end method

.method public addTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public addTitleEn(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mTitleEn:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/samsung/android/settings/search/SearchResultItem;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SearchResultItem missing title argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/search/SearchResultItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/search/SearchResultItem;-><init>(Lcom/samsung/android/settings/search/SearchResultItem$Builder;)V

    return-object v0
.end method
