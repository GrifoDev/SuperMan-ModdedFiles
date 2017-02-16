.class Lcom/android/internal/app/ResolverComparator;
.super Ljava/lang/Object;
.source "ResolverComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final RECENCY_MULTIPLIER:F = 2.0f

.field private static final RECENCY_TIME_PERIOD:J = 0x2932e00L

.field private static final TAG:Ljava/lang/String; = "ResolverComparator"

.field private static final USAGE_STATS_PERIOD:J = 0x240c8400L


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mCurrentTime:J

.field private final mHttp:Z

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mReferrerPackage:Ljava/lang/String;

.field private final mScoredTargets:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/app/ResolverComparator$ScoredTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mSinceTime:J

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrerPackage"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    .line 71
    iput-object p3, p0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 74
    const-string/jumbo v1, "usagestats"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    .line 77
    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    .line 78
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    iget-wide v4, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    .line 67
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 2
    .param p0, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    const/4 v0, 0x0

    .line 146
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 150
    :cond_1
    return v0
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 22
    .param p1, "lhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    .line 155
    const-string/jumbo v5, "com.sec.android.display_priority"

    .line 157
    .local v5, "displayPriorityKey":Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 158
    .local v9, "lhs":Landroid/content/pm/ResolveInfo;
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    .line 162
    .local v13, "rhs":Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    .line 163
    .local v6, "ia":I
    const/4 v2, 0x0

    .line 164
    .local v2, "ai_A":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 167
    .local v2, "ai_A":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 168
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string/jumbo v19, "com.sec.android.display_priority"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 172
    :cond_0
    const/4 v7, 0x0

    .line 173
    .local v7, "ib":I
    const/4 v3, 0x0

    .line 174
    .local v3, "ai_B":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 177
    .local v3, "ai_B":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 178
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string/jumbo v19, "com.sec.android.display_priority"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 182
    :cond_1
    if-eq v6, v7, :cond_2

    .line 184
    sub-int v18, v7, v6

    return v18

    .line 190
    :cond_2
    iget v0, v9, Landroid/content/pm/ResolveInfo;->targetUserId:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 191
    const/16 v18, 0x1

    return v18

    .line 194
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 198
    iget v0, v9, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v10

    .line 199
    .local v10, "lhsSpecific":Z
    iget v0, v13, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v14

    .line 200
    .local v14, "rhsSpecific":Z
    if-eq v10, v14, :cond_5

    .line 201
    if-eqz v10, :cond_4

    const/16 v18, -0x1

    :goto_0
    return v18

    :cond_4
    const/16 v18, 0x1

    goto :goto_0

    .line 205
    .end local v10    # "lhsSpecific":Z
    .end local v14    # "rhsSpecific":Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v8

    .line 206
    .local v8, "lPinned":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v12

    .line 208
    .local v12, "rPinned":Z
    if-eqz v8, :cond_6

    if-eqz v12, :cond_7

    .line 210
    :cond_6
    if-nez v8, :cond_8

    if-eqz v12, :cond_8

    .line 211
    const/16 v18, 0x1

    return v18

    .line 209
    :cond_7
    const/16 v18, -0x1

    return v18

    .line 215
    :cond_8
    if-nez v8, :cond_9

    if-eqz v12, :cond_c

    .line 229
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 230
    .local v16, "sa":Ljava/lang/CharSequence;
    if-nez v16, :cond_a

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 231
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 232
    .local v17, "sb":Ljava/lang/CharSequence;
    if-nez v17, :cond_b

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 234
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    move-object/from16 v18, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    return v18

    .line 216
    .end local v16    # "sa":Ljava/lang/CharSequence;
    .end local v17    # "sb":Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/ComponentName;

    .line 218
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 217
    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .line 219
    .local v11, "lhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/ComponentName;

    .line 220
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 219
    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .line 221
    .local v15, "rhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    iget v0, v15, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    move/from16 v18, v0

    iget v0, v11, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    move/from16 v19, v0

    sub-float v4, v18, v19

    .line 223
    .local v4, "diff":F
    const/16 v18, 0x0

    cmpl-float v18, v4, v18

    if-eqz v18, :cond_9

    .line 224
    const/16 v18, 0x0

    cmpl-float v18, v4, v18

    if-lez v18, :cond_d

    const/16 v18, 0x1

    :goto_1
    return v18

    :cond_d
    const/16 v18, -0x1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhsp"    # Ljava/lang/Object;
    .param p2, "rhsp"    # Ljava/lang/Object;

    .prologue
    .line 154
    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .end local p1    # "lhsp":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .end local p2    # "rhsp":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result v0

    return v0
.end method

.method public compute(Ljava/util/List;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedHashMap;->clear()V

    .line 84
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x2932e00

    sub-long v16, v26, v28

    .line 86
    .local v16, "recentSinceTime":J
    const-wide/16 v26, 0x1

    add-long v10, v16, v26

    .line 87
    .local v10, "mostRecentlyUsedTime":J
    const-wide/16 v12, 0x1

    .line 88
    .local v12, "mostTimeSpent":J
    const/4 v8, 0x1

    .line 90
    .local v8, "mostLaunched":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "target$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 92
    .local v19, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    new-instance v18, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverComparator$ScoredTarget;-><init>(Landroid/content/pm/ComponentInfo;)V

    .line 93
    .local v18, "scoredTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    .line 95
    .local v9, "pkStats":Landroid/app/usage/UsageStats;
    if-eqz v9, :cond_0

    .line 99
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 100
    invoke-static/range {v19 .. v19}, Lcom/android/internal/app/ResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 107
    :cond_1
    :goto_1
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v22

    .line 108
    .local v22, "timeSpent":J
    move-wide/from16 v0, v22

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->timeSpent:J

    .line 109
    cmp-long v25, v22, v12

    if-lez v25, :cond_2

    .line 110
    move-wide/from16 v12, v22

    .line 112
    :cond_2
    iget v7, v9, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 113
    .local v7, "launched":I
    int-to-long v0, v7

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->launchCount:J

    .line 114
    if-le v7, v8, :cond_0

    .line 115
    move v8, v7

    goto/16 :goto_0

    .line 101
    .end local v7    # "launched":I
    .end local v22    # "timeSpent":J
    :cond_3
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    .line 102
    .local v4, "lastTimeUsed":J
    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->lastTimeUsed:J

    .line 103
    cmp-long v25, v4, v10

    if-lez v25, :cond_1

    .line 104
    move-wide v10, v4

    goto :goto_1

    .line 128
    .end local v4    # "lastTimeUsed":J
    .end local v9    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v18    # "scoredTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v19    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .line 129
    .local v20, "target":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->lastTimeUsed:J

    move-wide/from16 v26, v0

    sub-long v26, v26, v16

    const-wide/16 v28, 0x0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v25, v0

    .line 130
    sub-long v26, v10, v16

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v26, v0

    .line 129
    div-float v14, v25, v26

    .line 131
    .local v14, "recency":F
    mul-float v25, v14, v14

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v15, v25, v26

    .line 132
    .local v15, "recencyScore":F
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->timeSpent:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v25, v0

    long-to-float v0, v12

    move/from16 v26, v0

    div-float v24, v25, v26

    .line 133
    .local v24, "usageTimeScore":F
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->launchCount:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v8

    move/from16 v26, v0

    div-float v6, v25, v26

    .line 135
    .local v6, "launchCountScore":F
    add-float v25, v15, v24

    add-float v25, v25, v6

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    goto :goto_2

    .line 81
    .end local v6    # "launchCountScore":F
    .end local v14    # "recency":F
    .end local v15    # "recencyScore":F
    .end local v20    # "target":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v24    # "usageTimeScore":F
    :cond_5
    return-void
.end method

.method public getScore(Landroid/content/ComponentName;)F
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .line 239
    .local v0, "target":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    if-eqz v0, :cond_0

    .line 240
    iget v1, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    return v1

    .line 242
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
