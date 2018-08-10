.class Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$8;
.super Ljava/lang/Object;
.source "CellLayoutTaskbar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->showAeroWindow(Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;)V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-wrap2(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
