.class public Landroid/os/BatteryStats$Uid$Pid;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pid"
.end annotation


# instance fields
.field public mWakeNesting:I

.field public mWakeStartMs:J

.field public mWakeSumMs:J

.field final synthetic this$1:Landroid/os/BatteryStats$Uid;


# direct methods
.method public constructor <init>(Landroid/os/BatteryStats$Uid;)V
    .locals 0

    iput-object p1, p0, Landroid/os/BatteryStats$Uid$Pid;->this$1:Landroid/os/BatteryStats$Uid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
