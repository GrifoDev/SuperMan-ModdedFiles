.class Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$5;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->reloadBadges()V

    :cond_0
    return-void
.end method
