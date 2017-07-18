.class Lcom/android/launcher2/HomeView$11;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Lcom/android/launcher2/AppWidgetBinder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$info:Lcom/android/launcher2/HomePendingWidget;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomePendingWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    iput-object p2, p0, Lcom/android/launcher2/HomeView$11;->val$info:Lcom/android/launcher2/HomePendingWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindFail()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Launcher.HomeView"

    const-string v1, "Problem binding widget. This should only happen when installed outside of /system/app and user declined authorization."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Not installed with permissions needed for binding widgets and authoization declined"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getCheckWidgetPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/AppWidgetBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/AppWidgetBinder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppWidgetBinder;->setNeedToPermission(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->remainOrRemovePlusPage()V

    :cond_1
    return-void
.end method

.method public onBindSuccess(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$400(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    iget-object v2, p0, Lcom/android/launcher2/HomeView$11;->val$info:Lcom/android/launcher2/HomePendingWidget;

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/android/launcher2/HomeView;->access$1500(Lcom/android/launcher2/HomeView;ILcom/android/launcher2/HomePendingWidget;Landroid/appwidget/AppWidgetHostView;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getCheckWidgetPermission()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/AppWidgetBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/AppWidgetBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppWidgetBinder;->setNeedToPermission(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->remainOrRemovePlusPage()V

    :cond_2
    return-void

    :cond_3
    const-string v1, "Launcher.HomeView"

    const-string v2, "addAppWidgetFromDrop onBindSuccess. But AppWidgetHost is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher2/HomeView$11;->this$0:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0
.end method
