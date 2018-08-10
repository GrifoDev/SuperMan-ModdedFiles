.class Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$12;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$12;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$12;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$12;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-set2(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$12;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-set1(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$12;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$12;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;->updateNeedToCheckLabsStatus(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange() SETTINGS_KEY_LABS_RESIZABLE_WINDOW_ENABLED mLabsModeSettingValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$12;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get5(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
