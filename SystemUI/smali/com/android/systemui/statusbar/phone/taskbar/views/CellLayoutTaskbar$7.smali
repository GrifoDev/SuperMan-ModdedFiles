.class Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$7;
.super Ljava/lang/Object;
.source "CellLayoutTaskbar.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->setThumbnailBitmap()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->show()V

    :cond_0
    return-void
.end method
