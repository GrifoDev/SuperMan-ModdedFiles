.class Lcom/android/launcher2/MenuAppsGridFragment$1;
.super Ljava/lang/Object;
.source "MenuAppsGridFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGridFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGridFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->isShown()Z

    move-result v4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v3

    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$100(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuAppsGrid$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-static {v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {v2, v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    :cond_2
    const-string v6, "DONT_CHG_STATE_ON_PREDRAW"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$200(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "DONT_CHG_STATE_ON_PREDRAW"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    new-instance v7, Lcom/android/launcher2/MenuAppsGridFragment$1$1;

    invoke-direct {v7, p0}, Lcom/android/launcher2/MenuAppsGridFragment$1$1;-><init>(Lcom/android/launcher2/MenuAppsGridFragment$1;)V

    sget-wide v8, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher2/MenuAppsGrid;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->restorePopupMenu()Z

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    iget-object v7, v7, Lcom/android/launcher2/MenuAppsGridFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    iput-object v11, v6, Lcom/android/launcher2/MenuAppsGridFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGridFragment;->access$100(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGridFragment;->access$300(Lcom/android/launcher2/MenuAppsGridFragment;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuAppsGrid;->restoreOpenFolderState(Landroid/os/Bundle;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v6, v11}, Lcom/android/launcher2/MenuAppsGridFragment;->access$302(Lcom/android/launcher2/MenuAppsGridFragment;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_2
.end method
