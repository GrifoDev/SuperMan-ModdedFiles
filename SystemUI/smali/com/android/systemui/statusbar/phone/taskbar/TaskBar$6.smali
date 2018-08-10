.class Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$6;
.super Ljava/lang/Object;
.source "TaskBar.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->registerReceiverAndObserverAsUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-wrap1(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-wrap2(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;I)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-wrap3(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;I)V

    return-void
.end method
