.class public Lcom/android/settings/datausage/DataUsageInfoController;
.super Ljava/lang/Object;
.source "DataUsageInfoController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSummaryLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J
    .locals 4

    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    :cond_0
    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    :cond_1
    return-wide v0
.end method

.method public updateDataLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V
    .locals 4

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-wide v0, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    iput-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    :cond_2
    iget-wide v0, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    iput-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    :cond_3
    return-void
.end method
