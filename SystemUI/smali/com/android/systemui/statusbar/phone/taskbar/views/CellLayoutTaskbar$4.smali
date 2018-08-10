.class Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$4;
.super Ljava/lang/Object;
.source "CellLayoutTaskbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->realTimeReorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-set1(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->realTimeReorder()V

    return-void
.end method
