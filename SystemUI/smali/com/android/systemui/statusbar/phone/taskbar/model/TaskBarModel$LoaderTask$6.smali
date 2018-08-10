.class Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$6;
.super Ljava/lang/Object;
.source "TaskBarModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$6;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$6;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;)Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;->bindTaskbarEnd()V

    :cond_0
    return-void
.end method
