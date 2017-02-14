.class Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
.super Ljava/lang/Object;
.source "SchedPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SchedPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupPolicy"
.end annotation


# instance fields
.field final actGroupMax:I

.field final actGroupMin:I

.field final allowConnection:Z

.field final condGroupBelow:I

.field final condGroupOver:I

.field final condStateBelow:I

.field final condStateOver:I

.field final isHighPriority:Z


# direct methods
.method constructor <init>(ZZII)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;-><init>(ZZIIII)V

    return-void
.end method

.method constructor <init>(ZZIIII)V
    .locals 9

    const/4 v5, -0x1

    const/16 v6, 0x10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;-><init>(ZZIIIIII)V

    return-void
.end method

.method constructor <init>(ZZIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->isHighPriority:Z

    iput-boolean p2, p0, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->allowConnection:Z

    iput p5, p0, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->condStateOver:I

    iput p6, p0, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->condStateBelow:I

    iput p3, p0, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->condGroupOver:I

    iput p4, p0, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->condGroupBelow:I

    iput p7, p0, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->actGroupMin:I

    iput p8, p0, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->actGroupMax:I

    return-void
.end method
