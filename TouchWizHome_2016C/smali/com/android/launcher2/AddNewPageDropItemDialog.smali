.class public Lcom/android/launcher2/AddNewPageDropItemDialog;
.super Landroid/app/DialogFragment;
.source "AddNewPageDropItemDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mCelllayout:Lcom/android/launcher2/CellLayout; = null

.field private static mDragState:Lcom/android/launcher2/DragState; = null

.field private static final sFragmentTag:Ljava/lang/String; = "AddNewPageDropItemDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragState;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/Workspace;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lcom/android/launcher2/AddNewPageDropItemDialog;->mCelllayout:Lcom/android/launcher2/CellLayout;

    sput-object p2, Lcom/android/launcher2/AddNewPageDropItemDialog;->mDragState:Lcom/android/launcher2/DragState;

    new-instance v0, Lcom/android/launcher2/AddNewPageDropItemDialog;

    invoke-direct {v0}, Lcom/android/launcher2/AddNewPageDropItemDialog;-><init>()V

    const-string v1, "AddNewPageDropItemDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/AddNewPageDropItemDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "AddNewPageDropItemDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "AddNewPageDropItemDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    sget-object v3, Lcom/android/launcher2/AddNewPageDropItemDialog;->mCelllayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_5

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    :goto_1
    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v3

    sub-int/2addr v1, v3

    :cond_0
    sget-object v3, Lcom/android/launcher2/AddNewPageDropItemDialog;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/DragState;->setAllowMoveAfterDrop(Z)V

    sget-object v3, Lcom/android/launcher2/AddNewPageDropItemDialog;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v3, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutFolder;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/launcher2/AddNewPageDropItemDialog;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v3, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v3, Lcom/android/launcher2/CellLayoutFolder;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutFolder;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Folder;->setAllowMoveAfterDrop(Z)V

    :cond_1
    sget-object v3, Lcom/android/launcher2/AddNewPageDropItemDialog;->mDragState:Lcom/android/launcher2/DragState;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->canAcceptDrop(Lcom/android/launcher2/DragState;IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    :cond_2
    sget-object v3, Lcom/android/launcher2/AddNewPageDropItemDialog;->mCelllayout:Lcom/android/launcher2/CellLayout;

    sget-object v4, Lcom/android/launcher2/AddNewPageDropItemDialog;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayout;->dissolveFolder(Lcom/android/launcher2/DragState;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->insertPlusPage()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {p0}, Lcom/android/launcher2/AddNewPageDropItemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/AddNewPageDropItemDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/AddNewPageDropItemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900a0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AddNewPageDropItemDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090036

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090031

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
