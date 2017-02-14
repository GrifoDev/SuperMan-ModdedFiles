.class public Lcom/android/server/notification/NotificationComparator;
.super Ljava/lang/Object;
.source "NotificationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/notification/NotificationRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I
    .locals 12

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    if-eq v0, v4, :cond_0

    invoke-static {v0, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    return v8

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v5

    if-eq v1, v5, :cond_1

    invoke-static {v1, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    return v8

    :cond_1
    iget-object v8, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v3, v8, Landroid/app/Notification;->priority:I

    iget-object v8, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v7, v8, Landroid/app/Notification;->priority:I

    if-eq v3, v7, :cond_2

    invoke-static {v3, v7}, Ljava/lang/Integer;->compare(II)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    return v8

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v2

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v6

    cmpl-float v8, v2, v6

    if-eqz v8, :cond_3

    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    return v8

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Long;->compare(JJ)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    return v8
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationComparator;->compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method
