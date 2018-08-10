.class Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;
.super Ljava/lang/Object;
.source "TaskBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->onTaskToFront(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;

.field final synthetic val$compName:Landroid/content/ComponentName;

.field final synthetic val$resizable:Z

.field final synthetic val$taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final synthetic val$taskId:I

.field final synthetic val$taskType:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;IILandroid/content/ComponentName;ILandroid/app/ActivityManager$TaskDescription;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->val$taskId:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->val$userId:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->val$compName:Landroid/content/ComponentName;

    iput p5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->val$taskType:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->val$taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->val$resizable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get8(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->val$taskId:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->val$userId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->val$compName:Landroid/content/ComponentName;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->val$taskType:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->val$taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;->val$resizable:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->focusRunningTaskApp(IILandroid/content/ComponentName;ILandroid/app/ActivityManager$TaskDescription;Z)V

    return-void
.end method
