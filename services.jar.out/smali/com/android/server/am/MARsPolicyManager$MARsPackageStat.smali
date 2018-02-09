.class public Lcom/android/server/am/MARsPolicyManager$MARsPackageStat;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MARsPackageStat"
.end annotation


# instance fields
.field public diffValue:J

.field public packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field public totalValue:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;JJ)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$MARsPackageStat;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager$MARsPackageStat;->packageName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/am/MARsPolicyManager$MARsPackageStat;->totalValue:J

    iput-wide p5, p0, Lcom/android/server/am/MARsPolicyManager$MARsPackageStat;->diffValue:J

    return-void
.end method
