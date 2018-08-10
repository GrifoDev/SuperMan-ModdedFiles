.class public Lcom/android/settings/dashboard/suggestions/SuggestionRanker;
.super Ljava/lang/Object;
.source "SuggestionRanker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/suggestions/SuggestionRanker$1;,
        Lcom/android/settings/dashboard/suggestions/SuggestionRanker$2;
    }
.end annotation


# static fields
.field private static final WEIGHTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSuggestionFeaturizer:Lcom/android/settings/dashboard/suggestions/SuggestionFeaturizer;

.field private final relevanceMetrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field suggestionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/suggestions/SuggestionRanker;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionRanker;->relevanceMetrics:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$1;

    invoke-direct {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$1;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/suggestions/SuggestionRanker;->WEIGHTS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dashboard/suggestions/SuggestionFeaturizer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$2;-><init>(Lcom/android/settings/dashboard/suggestions/SuggestionRanker;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionRanker;->suggestionComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionRanker;->mSuggestionFeaturizer:Lcom/android/settings/dashboard/suggestions/SuggestionFeaturizer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionRanker;->relevanceMetrics:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method getRelevanceMetric(Ljava/util/Map;)D
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    return-wide v2

    :cond_0
    sget-object v4, Lcom/android/settings/dashboard/suggestions/SuggestionRanker;->WEIGHTS:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/android/settings/dashboard/suggestions/SuggestionRanker;->WEIGHTS:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    goto :goto_0

    :cond_1
    return-wide v2
.end method
