.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "DexDualNavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
