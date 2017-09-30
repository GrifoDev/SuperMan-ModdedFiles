.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_LIST_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field private static mTimeStampList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;->mTimeStampList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTimeStampExtra(Landroid/content/Intent;)J
    .locals 4

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-string v1, "timeStamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "timeStamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_0

    :cond_4
    move-wide v0, v2

    goto :goto_0
.end method

.method public static isDuplicated(Landroid/content/Intent;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "intent is null, isDuplicated returns FALSE"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;->getTimeStampExtra(Landroid/content/Intent;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    const-string v1, "timeStamp is not available, isDuplicated returns FALSE"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;->mTimeStampList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "isDuplicated returns TRUE"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "not duplicated, isDuplicated returns FALSE"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;->put(J)V

    goto :goto_0
.end method

.method private static put(J)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;->mTimeStampList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;->mTimeStampList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;->mTimeStampList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/RecentPushList;->mTimeStampList:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
