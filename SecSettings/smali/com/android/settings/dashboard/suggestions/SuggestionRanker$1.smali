.class final Lcom/android/settings/dashboard/suggestions/SuggestionRanker$1;
.super Ljava/util/HashMap;
.source "SuggestionRanker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/suggestions/SuggestionRanker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "is_shown"

    const-wide v2, 0x40104cde84305705L    # 4.07506758256

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "is_dismissed"

    const-wide v2, 0x4000ec3f1a8ce91bL    # 2.11535473578

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "is_clicked"

    const-wide v2, 0x3ff3806db1d95e5aL    # 1.21885461304

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "time_from_last_shown"

    const-wide v2, 0x400981ae0b70c06aL    # 3.18832024515

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "time_from_last_dismissed"

    const-wide v2, 0x3ff1959d67bd2525L    # 1.09902706645

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "time_from_last_clicked"

    const-wide v2, 0x3fd0cef299f7aa7cL    # 0.262631082877

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "shown_count"

    const-wide v2, -0x3f94720ac5f6efb6L    # -220.4361849

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dashboard/suggestions/SuggestionRanker$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
