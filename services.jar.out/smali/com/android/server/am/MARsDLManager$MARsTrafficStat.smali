.class public Lcom/android/server/am/MARsDLManager$MARsTrafficStat;
.super Ljava/lang/Object;
.source "MARsDLManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MARsTrafficStat"
.end annotation


# instance fields
.field public diffRxBytes:J

.field public diffTxBytes:J

.field public name:Ljava/lang/String;

.field public rxBytes:J

.field final synthetic this$0:Lcom/android/server/am/MARsDLManager;

.field public txBytes:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDLManager;Ljava/lang/String;JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->this$0:Lcom/android/server/am/MARsDLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->name:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->txBytes:J

    iput-wide p5, p0, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->rxBytes:J

    iput-wide v0, p0, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->diffTxBytes:J

    iput-wide v0, p0, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->diffRxBytes:J

    return-void
.end method
