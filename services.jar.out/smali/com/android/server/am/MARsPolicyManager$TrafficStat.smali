.class public Lcom/android/server/am/MARsPolicyManager$TrafficStat;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrafficStat"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field public rxbytestime:J

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field public txbytestime:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;JJ)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$TrafficStat;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager$TrafficStat;->packageName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/am/MARsPolicyManager$TrafficStat;->txbytestime:J

    iput-wide p4, p0, Lcom/android/server/am/MARsPolicyManager$TrafficStat;->rxbytestime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;JJ)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$TrafficStat;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager$TrafficStat;->packageName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/am/MARsPolicyManager$TrafficStat;->txbytestime:J

    iput-wide p5, p0, Lcom/android/server/am/MARsPolicyManager$TrafficStat;->rxbytestime:J

    return-void
.end method
