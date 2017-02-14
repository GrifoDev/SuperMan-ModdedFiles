.class Lcom/android/launcher2/CellLayoutNoGap$2;
.super Ljava/lang/Object;
.source "CellLayoutNoGap.java"

# interfaces
.implements Lcom/android/launcher2/Alarm$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayoutNoGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutNoGap;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutNoGap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutNoGap$2;->this$0:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher2/Alarm;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap$2;->this$0:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    return-void
.end method
