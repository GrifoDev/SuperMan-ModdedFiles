.class Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->realTimeReorder()V

    return-void
.end method
