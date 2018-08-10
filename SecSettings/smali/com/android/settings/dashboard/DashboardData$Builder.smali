.class public Lcom/android/settings/dashboard/DashboardData$Builder;
.super Ljava/lang/Object;
.source "DashboardData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mSuggestionMode:[I

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/DashboardData$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/DashboardData$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/DashboardData$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mSuggestionMode:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dashboard/DashboardData;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mSuggestionMode:[I

    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData;->-get0(Lcom/android/settings/dashboard/DashboardData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mCategories:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData;->-get1(Lcom/android/settings/dashboard/DashboardData;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mSuggestions:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardData;->mSuggestionMode:[I

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mSuggestionMode:[I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/dashboard/DashboardData;
    .locals 2

    new-instance v0, Lcom/android/settings/dashboard/DashboardData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardData;-><init>(Lcom/android/settings/dashboard/DashboardData$Builder;Lcom/android/settings/dashboard/DashboardData;)V

    return-object v0
.end method

.method public setCategories(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)",
            "Lcom/android/settings/dashboard/DashboardData$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mCategories:Ljava/util/List;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setSuggestionMode([I)Lcom/android/settings/dashboard/DashboardData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mSuggestionMode:[I

    return-object p0
.end method

.method public setSuggestions(Ljava/util/ArrayList;)Lcom/android/settings/dashboard/DashboardData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;)",
            "Lcom/android/settings/dashboard/DashboardData$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mSuggestions:Ljava/util/ArrayList;

    return-object p0
.end method
