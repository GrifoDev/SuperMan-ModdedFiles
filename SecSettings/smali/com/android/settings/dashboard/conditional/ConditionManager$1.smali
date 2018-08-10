.class final Lcom/android/settings/dashboard/conditional/ConditionManager$1;
.super Ljava/lang/Object;
.source "ConditionManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/conditional/ConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/dashboard/conditional/Condition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/dashboard/conditional/Condition;Lcom/android/settings/dashboard/conditional/Condition;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/Condition;->getLastChange()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/settings/dashboard/conditional/Condition;->getLastChange()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/dashboard/conditional/Condition;

    check-cast p2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionManager$1;->compare(Lcom/android/settings/dashboard/conditional/Condition;Lcom/android/settings/dashboard/conditional/Condition;)I

    move-result v0

    return v0
.end method
