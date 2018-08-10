.class Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$5;
.super Ljava/lang/Object;
.source "CellLayoutTaskbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->realTimeReorder(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$5;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-set1(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$5;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->realTimeReorder(I)V

    return-void
.end method
