.class Lcom/android/systemui/statusbar/phone/StatusBar$5;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get23()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getTaskBar()Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isTaskBarHovered()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->cancelDragFromTaskBar()V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get19(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap32(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "mAutohide : suspendAutohide."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const v3, -0xc000001

    and-int v0, v2, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap15(Lcom/android/systemui/statusbar/phone/StatusBar;I)V

    goto :goto_0
.end method
