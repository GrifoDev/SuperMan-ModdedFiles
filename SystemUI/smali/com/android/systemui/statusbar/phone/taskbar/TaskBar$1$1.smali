.class Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$1;
.super Ljava/lang/Object;
.source "TaskBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->onTaskRemoved(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;

.field final synthetic val$tId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$1;->val$tId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get8(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$1;->val$tId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeRunningTaskApp(I)V

    return-void
.end method
