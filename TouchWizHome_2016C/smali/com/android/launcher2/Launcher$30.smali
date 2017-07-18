.class Lcom/android/launcher2/Launcher$30;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$30;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DateChangedReceiver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->access$1600()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Launcher"

    const-string v5, "date changed clearLiveIconBitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v4, Lcom/android/launcher2/utils/LiveIconUtils;->CALENDAR_ICON_PACKAGES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/launcher2/utils/LiveIconUtils;->clearLiveIconBitmap(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/Launcher$30;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/Launcher$30;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/Launcher$30;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-object v4, p0, Lcom/android/launcher2/Launcher$30;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/HomeView;->updateLiveIcon(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/Launcher$30;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Launcher$30;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Launcher$30;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->updateCalendarLiveIcon()V

    goto/16 :goto_0
.end method
