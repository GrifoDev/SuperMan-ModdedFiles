.class Lcom/android/launcher2/Folder$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->hideSearchAppList(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$19;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/Folder$19;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;
    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$1100(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "Launcher.Folder"

    const-string v3, "onAnimationEnd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Folder$19;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;
    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$1100(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v2, p0, Lcom/android/launcher2/Folder$19;->this$0:Lcom/android/launcher2/Folder;

    # invokes: Lcom/android/launcher2/Folder;->popBackStackFragment()Z
    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$1200(Lcom/android/launcher2/Folder;)Z

    iget-object v2, p0, Lcom/android/launcher2/Folder$19;->this$0:Lcom/android/launcher2/Folder;

    const/4 v3, 0x0

    # setter for: Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;
    invoke-static {v2, v3}, Lcom/android/launcher2/Folder;->access$1102(Lcom/android/launcher2/Folder;Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppListFragment;

    iget-object v2, p0, Lcom/android/launcher2/Folder$19;->this$0:Lcom/android/launcher2/Folder;

    const/4 v3, 0x0

    # setter for: Lcom/android/launcher2/Folder;->mIsHidingSearchAppList:Z
    invoke-static {v2, v3}, Lcom/android/launcher2/Folder;->access$1302(Lcom/android/launcher2/Folder;Z)Z

    goto :goto_0
.end method
