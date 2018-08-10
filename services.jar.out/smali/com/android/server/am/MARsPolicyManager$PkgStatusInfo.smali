.class public Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PkgStatusInfo"
.end annotation


# instance fields
.field public autorun:I

.field public forceStopReason:I

.field public forceStopTime:J

.field public freezedReason:Ljava/lang/String;

.field public freezedTime:J

.field public isAREsTriggeredReason:I

.field public isFreezed:Z

.field public isSendPackageRestart:I

.field public lastUsedTime:J

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field public uid:I

.field public unfreezedReason:Ljava/lang/String;

.field public unfreezedTime:J

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;II)V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    iput p4, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    iput v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->autorun:I

    iput v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isSendPackageRestart:I

    iput v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isAREsTriggeredReason:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopReason:I

    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedTime:J

    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedTime:J

    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J

    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->lastUsedTime:J

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedReason:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedReason:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    return-void
.end method
