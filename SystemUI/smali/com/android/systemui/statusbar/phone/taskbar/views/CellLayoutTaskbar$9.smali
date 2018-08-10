.class Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$9;
.super Landroid/os/AsyncTask;
.source "CellLayoutTaskbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->refreshAllRunningTaskList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$9;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getRunningTaskList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$9;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mTaskId:I

    iget v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mUserId:I

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mComponent:Landroid/content/ComponentName;

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addRunningTaskApp(IILandroid/content/ComponentName;Landroid/app/ActivityManager$TaskDescription;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;->mTaskId:I

    invoke-static {v4, v3, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;IZ)V

    :cond_1
    return-void
.end method
