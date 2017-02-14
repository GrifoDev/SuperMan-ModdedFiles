.class Lcom/android/settings/notification/NotificationStation$3;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationStation;
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
        "Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation$3;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)I
    .locals 4

    iget-wide v0, p2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    iget-wide v2, p1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    check-cast p2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/NotificationStation$3;->compare(Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)I

    move-result v0

    return v0
.end method
