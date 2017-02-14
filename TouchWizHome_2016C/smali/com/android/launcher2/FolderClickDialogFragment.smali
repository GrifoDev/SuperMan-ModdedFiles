.class public Lcom/android/launcher2/FolderClickDialogFragment;
.super Landroid/app/DialogFragment;
.source "FolderClickDialogFragment.java"


# static fields
.field private static mFolder:Lcom/android/launcher2/FolderItem; = null

.field private static mState:Lcom/android/launcher2/MenuAppsGrid$State; = null

.field private static final sFragmentTag:Ljava/lang/String; = "FolderEditClick"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    sput-object v0, Lcom/android/launcher2/FolderClickDialogFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderClickDialogFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/launcher2/FolderItem;
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderClickDialogFragment;->mFolder:Lcom/android/launcher2/FolderItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderClickDialogFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2

    invoke-static {p0}, Lcom/android/launcher2/FolderClickDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lcom/android/launcher2/FolderClickDialogFragment;->mFolder:Lcom/android/launcher2/FolderItem;

    sput-object p2, Lcom/android/launcher2/FolderClickDialogFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/FolderClickDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/FolderClickDialogFragment;-><init>()V

    const-string v1, "FolderEditClick"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/FolderClickDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "FolderEditClick"

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

    const-string v0, "FolderEditClick"

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
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderClickDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher2/FolderClickDialogFragment;->mFolder:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mTitle:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderPopup()Z

    move-result v3

    iget-object v6, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080089

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/launcher2/FolderClickDialogFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v6, v7, :cond_0

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800b3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/launcher2/FolderClickDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x1030132

    invoke-direct {v4, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x7f030005

    iget-object v7, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v4, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v6, Lcom/android/launcher2/FolderClickDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/android/launcher2/FolderClickDialogFragment$1;-><init>(Lcom/android/launcher2/FolderClickDialogFragment;)V

    invoke-virtual {v1, v0, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v6

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->releaseWindowDim(Landroid/view/Window;)V

    return-object v2

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800b2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderClickDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/FolderClickDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderClickDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method
