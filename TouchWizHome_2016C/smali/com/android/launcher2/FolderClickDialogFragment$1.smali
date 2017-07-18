.class Lcom/android/launcher2/FolderClickDialogFragment$1;
.super Ljava/lang/Object;
.source "FolderClickDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderClickDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderClickDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderClickDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderClickDialogFragment$1;->this$0:Lcom/android/launcher2/FolderClickDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/FolderClickDialogFragment$1;->this$0:Lcom/android/launcher2/FolderClickDialogFragment;

    invoke-static {v1}, Lcom/android/launcher2/FolderClickDialogFragment;->access$000(Lcom/android/launcher2/FolderClickDialogFragment;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->cancelClicksOnChildrenForCurrentPage()V

    invoke-static {}, Lcom/android/launcher2/FolderClickDialogFragment;->access$100()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/launcher2/FolderClickDialogFragment;->access$100()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-static {}, Lcom/android/launcher2/FolderClickDialogFragment;->access$100()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    iget-object v1, p0, Lcom/android/launcher2/FolderClickDialogFragment$1;->this$0:Lcom/android/launcher2/FolderClickDialogFragment;

    invoke-static {v1}, Lcom/android/launcher2/FolderClickDialogFragment;->access$000(Lcom/android/launcher2/FolderClickDialogFragment;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/launcher2/FolderClickDialogFragment;->access$100()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppFolderItem;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/FolderClickDialogFragment$1;->this$0:Lcom/android/launcher2/FolderClickDialogFragment;

    invoke-static {v3}, Lcom/android/launcher2/FolderClickDialogFragment;->access$200(Lcom/android/launcher2/FolderClickDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppFolderRemoveDialog;->createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
