.class public Lcom/android/launcher2/LockUnlockItemDialog;
.super Landroid/app/DialogFragment;
.source "LockUnlockItemDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static isFromMoveApps:Z = false

.field private static mBaseItem:Lcom/android/launcher2/BaseItem; = null

.field public static mCanceled:Z = false

.field private static mClickedItem:Lcom/android/launcher2/BaseItem; = null

.field private static mClickedView:Landroid/view/View; = null

.field private static mFolderHomeItem:Lcom/android/launcher2/FolderItem; = null

.field private static mFolderIconView:Lcom/android/launcher2/FolderIconView; = null

.field private static mFolderMenuItem:Lcom/android/launcher2/FolderItem; = null

.field private static mOriginalFolderItemcount:I = 0x0

.field private static mTitle:Ljava/lang/String; = null

.field private static mdrageState:Lcom/android/launcher2/DragState; = null

.field private static final sFragmentTag:Ljava/lang/String; = "LockUnlockItemDialog"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/LockUnlockItemDialog;->mCanceled:Z

    sput-boolean v0, Lcom/android/launcher2/LockUnlockItemDialog;->isFromMoveApps:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static SetCurrentFolderHomeItem(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;)V
    .locals 0

    sput-object p0, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderHomeItem:Lcom/android/launcher2/FolderItem;

    sput-object p1, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderIconView:Lcom/android/launcher2/FolderIconView;

    return-void
.end method

.method static SetCurrentFolderMenuItem(Lcom/android/launcher2/FolderItem;)V
    .locals 0

    sput-object p0, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderMenuItem:Lcom/android/launcher2/FolderItem;

    return-void
.end method

.method static createAndShow(Landroid/view/View;Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/LockUnlockItemDialog;->isFromMoveApps:Z

    sput-object p3, Lcom/android/launcher2/LockUnlockItemDialog;->mTitle:Ljava/lang/String;

    sput-object p1, Lcom/android/launcher2/LockUnlockItemDialog;->mClickedItem:Lcom/android/launcher2/BaseItem;

    sput-object p0, Lcom/android/launcher2/LockUnlockItemDialog;->mClickedView:Landroid/view/View;

    sget-object v0, Lcom/android/launcher2/LockUnlockItemDialog;->mBaseItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v0, p2}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;)V

    return-void
.end method

.method static createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;)V
    .locals 2

    invoke-static {p1}, Lcom/android/launcher2/LockUnlockItemDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/android/launcher2/LockUnlockItemDialog;->mBaseItem:Lcom/android/launcher2/BaseItem;

    new-instance v0, Lcom/android/launcher2/LockUnlockItemDialog;

    invoke-direct {v0}, Lcom/android/launcher2/LockUnlockItemDialog;-><init>()V

    const-string v1, "LockUnlockItemDialog"

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/LockUnlockItemDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    sput-object p2, Lcom/android/launcher2/LockUnlockItemDialog;->mTitle:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher2/LockUnlockItemDialog;->mBaseItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v0, p1}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;)V

    return-void
.end method

.method static createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/launcher2/DragState;)V
    .locals 4

    const/4 v3, 0x0

    sput-object p0, Lcom/android/launcher2/LockUnlockItemDialog;->mBaseItem:Lcom/android/launcher2/BaseItem;

    sput-object p3, Lcom/android/launcher2/LockUnlockItemDialog;->mdrageState:Lcom/android/launcher2/DragState;

    sput-object p2, Lcom/android/launcher2/LockUnlockItemDialog;->mTitle:Ljava/lang/String;

    sput-boolean v3, Lcom/android/launcher2/LockUnlockItemDialog;->mCanceled:Z

    invoke-static {p1}, Lcom/android/launcher2/LockUnlockItemDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher2/LockUnlockItemDialog;

    invoke-direct {v0}, Lcom/android/launcher2/LockUnlockItemDialog;-><init>()V

    const-string v2, "LockUnlockItemDialog"

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher2/LockUnlockItemDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher2/LockUnlockItemDialog;->mdrageState:Lcom/android/launcher2/DragState;

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v2

    sput v2, Lcom/android/launcher2/LockUnlockItemDialog;->mOriginalFolderItemcount:I

    goto :goto_0

    :cond_1
    sput v3, Lcom/android/launcher2/LockUnlockItemDialog;->mOriginalFolderItemcount:I

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "LockUnlockItemDialog"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method static getCurrentInstance(Landroid/app/FragmentManager;)Lcom/android/launcher2/LockUnlockItemDialog;
    .locals 1

    const-string v0, "LockUnlockItemDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LockUnlockItemDialog;

    return-object v0
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "LockUnlockItemDialog"

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

    iget-object v2, p0, Lcom/android/launcher2/LockUnlockItemDialog;->context:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LockUnlockItemDialog;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v0

    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    sget-object v2, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderHomeItem:Lcom/android/launcher2/FolderItem;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderIconView:Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/LockUnlockItemDialog;->context:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/LockUnlockItemDialog;->context:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderHomeItem:Lcom/android/launcher2/FolderItem;

    sget-object v4, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderIconView:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/Workspace;->openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    :cond_1
    sget-object v2, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderMenuItem:Lcom/android/launcher2/FolderItem;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderMenuItem:Lcom/android/launcher2/FolderItem;

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, -0x2

    if-ne p2, v2, :cond_2

    if-eqz v0, :cond_4

    sget-object v2, Lcom/android/launcher2/LockUnlockItemDialog;->mBaseItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0, v2, v5}, Lcom/android/launcher2/FolderLock;->unlockApp(Lcom/android/launcher2/BaseItem;Z)V

    :cond_4
    sget-object v2, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderHomeItem:Lcom/android/launcher2/FolderItem;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderIconView:Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/LockUnlockItemDialog;->context:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/LockUnlockItemDialog;->context:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderHomeItem:Lcom/android/launcher2/FolderItem;

    sget-object v4, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderIconView:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/Workspace;->openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    :cond_5
    sget-object v2, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderMenuItem:Lcom/android/launcher2/FolderItem;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/launcher2/LockUnlockItemDialog;->mFolderMenuItem:Lcom/android/launcher2/FolderItem;

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/LockUnlockItemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/LockUnlockItemDialog;->context:Landroid/content/Context;

    const-string v2, ""

    iget-object v5, p0, Lcom/android/launcher2/LockUnlockItemDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090072

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher2/LockUnlockItemDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LockUnlockItemDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/launcher2/LockUnlockItemDialog;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v5, Lcom/android/launcher2/LockUnlockItemDialog$1;

    invoke-direct {v5, p0}, Lcom/android/launcher2/LockUnlockItemDialog$1;-><init>(Lcom/android/launcher2/LockUnlockItemDialog;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
