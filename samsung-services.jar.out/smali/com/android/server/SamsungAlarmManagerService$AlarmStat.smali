.class Lcom/android/server/SamsungAlarmManagerService$AlarmStat;
.super Ljava/lang/Object;
.source "SamsungAlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SamsungAlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlarmStat"
.end annotation


# instance fields
.field public count:I

.field public final uid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/SamsungAlarmManagerService$AlarmStat;->uid:I

    return-void
.end method
