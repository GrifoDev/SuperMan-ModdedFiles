.class public Lcom/samsung/android/cocktailbar/CocktailBarFeatures;
.super Ljava/lang/Object;
.source "CocktailBarFeatures.java"


# static fields
.field public static final CATEGORY_NORMAL:Ljava/lang/String; = "normal"

.field public static final COCKTAIL_ENABLED:Z = true

.field private static final FEATURE_COCKTAIL_BAR:I = 0x1

.field private static final FEATURE_COCKTAIL_PANEL:I = 0x2

.field private static final FEATURE_NONE:I

.field private static mCategoryFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCocktailFeature:I

.field private static sQueriedTypeCocktail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sQueriedTypeCocktail:Z

    sput v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureCocktailFeature(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v2, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sQueriedTypeCocktail:Z

    if-nez v2, :cond_1

    sput-boolean v3, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sQueriedTypeCocktail:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :cond_0
    :try_start_0
    const-string/jumbo v2, "com.sec.feature.cocktailbar"

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->verifyCocktailFeature(Landroid/content/pm/PackageManager;ILjava/lang/String;)I

    move-result v2

    sput v2, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    if-nez v2, :cond_1

    const-string/jumbo v2, "com.sec.feature.cocktailpanel"

    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->verifyCocktailFeature(Landroid/content/pm/PackageManager;ILjava/lang/String;)I

    move-result v2

    sput v2, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getCategroyFilters(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->mCategoryFilter:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->mCategoryFilter:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->mCategoryFilter:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isSupportCategory(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->mCategoryFilter:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->getCategroyFilters(Landroid/content/Context;)Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->mCategoryFilter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->mCategoryFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static isSupportCocktailBar(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->ensureCocktailFeature(Landroid/content/Context;)V

    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportCocktailPanel(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->ensureCocktailFeature(Landroid/content/Context;)V

    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    if-eq v1, v0, :cond_0

    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSystemBarType(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static verifyCocktailFeature(Landroid/content/pm/PackageManager;ILjava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, p1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "system/etc/permissions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, p1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
