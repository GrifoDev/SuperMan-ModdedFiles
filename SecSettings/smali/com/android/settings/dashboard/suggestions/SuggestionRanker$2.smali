.class Lcom/android/settings/dashboard/suggestions/SuggestionRanker$2;
.super Ljava/lang/Object;
.source "SuggestionRanker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/suggestions/SuggestionRanker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settingslib/drawer/Tile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/suggestions/SuggestionRanker;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/suggestions/SuggestionRanker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$2;->this$0:Lcom/android/settings/dashboard/suggestions/SuggestionRanker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I
    .locals 4

    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$2;->this$0:Lcom/android/settings/dashboard/suggestions/SuggestionRanker;

    invoke-static {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionRanker;->-get0(Lcom/android/settings/dashboard/suggestions/SuggestionRanker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$2;->this$0:Lcom/android/settings/dashboard/suggestions/SuggestionRanker;

    invoke-static {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionRanker;->-get0(Lcom/android/settings/dashboard/suggestions/SuggestionRanker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    check-cast p2, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$2;->compare(Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I

    move-result v0

    return v0
.end method
