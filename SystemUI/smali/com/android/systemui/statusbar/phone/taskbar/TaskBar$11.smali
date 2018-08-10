.class Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$11;
.super Landroid/database/ContentObserver;
.source "TaskBar.java"


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
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$11;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onChange() SETTINGS_KEY_BIXBY_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$11;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get8(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$11;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get8(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateBixbyOnDeX()V

    :cond_1
    return-void
.end method
