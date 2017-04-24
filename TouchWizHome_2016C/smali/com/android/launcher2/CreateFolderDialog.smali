.class public Lcom/android/launcher2/CreateFolderDialog;
.super Landroid/app/DialogFragment;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    }
.end annotation


# static fields
.field private static final FIND_NEW_POS_KEY:Ljava/lang/String; = "FIND_NEW_POSITION"

.field private static final FOLDER_TITLE_KEY:Ljava/lang/String; = "FOLDER_TITLE"

.field private static final ITEM_DESTINATION_CONTAINER_ID_KEY:Ljava/lang/String; = "ITEM_DESTINATION_CONTAINER_ID"

.field private static final ITEM_ID_KEY:Ljava/lang/String; = "ITEM_ID"

.field private static final ITEM_ORIGIN_CONTAINER_ID_KEY:Ljava/lang/String; = "ITEM_ORIGIN_CONTAINER_ID"

.field private static final ORIGINAL_CONTAINER_CELL_KEY:Ljava/lang/String; = "ORIGINAL_CONTAINER_CELL"

.field private static final ORIGINAL_CONTAINER_SCREEN_KEY:Ljava/lang/String; = "ORIGINAL_CONTAINER_SCREEN"

.field private static final REMOVE_ITEM_KEY:Ljava/lang/String; = "REMOVE_ITEM"

.field private static final sFragmentTag:Ljava/lang/String; = "CreateFolderDialog"


# instance fields
.field private color:Lcom/android/launcher2/Folder$FolderColor;

.field private dialog:Landroid/app/Dialog;

.field private mCreateFolderColor:I

.field private mCreateFolderDialog:Landroid/widget/LinearLayout;

.field private mDestinationContainerId:J

.field private mFindNewPosition:Z

.field private mFolderAddButton:Landroid/widget/ImageView;

.field private mFolderChildItem:Lcom/android/launcher2/BaseItem;

.field private mFolderOptionView:Landroid/widget/LinearLayout;

.field private mFolderTitle:Landroid/widget/EditText;

.field private mForlderTouchListener:Landroid/view/View$OnTouchListener;

.field private mItemId:J

.field private mOriginContainerId:J

.field private mOriginalContainerCell:I

.field private mOriginalContainerScreen:I

.field private mRemoveItem:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    iput v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher2/Folder$FolderColor;

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    new-instance v0, Lcom/android/launcher2/CreateFolderDialog$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CreateFolderDialog$1;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mForlderTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/CreateFolderDialog;IIZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CreateFolderDialog;->closeFolderOption(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/CreateFolderDialog;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/CreateFolderDialog;->doAddMoreApps(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V

    return-void
.end method

.method private closeFolderOption(IIZ)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    if-nez p3, :cond_1

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "input_method"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move v3, v4

    goto :goto_0
.end method

.method static createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V
    .locals 10

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/launcher2/CreateFolderDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct {v0}, Lcom/android/launcher2/CreateFolderDialog;-><init>()V

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher2/CreateFolderDialog;->init(Lcom/android/launcher2/BaseItem;JJZZII)V

    const-string v1, "CreateFolderDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/CreateFolderDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;Z)V
    .locals 3

    const-string v1, "CreateFolderDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method private doAddMoreApps(Landroid/app/Dialog;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppsGrid;->setCreateFolderAddButtonFromHomeView(Z)V

    invoke-virtual {v3, v0}, Lcom/android/launcher2/MenuAppsGrid;->setFolderTitletoAddButton(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->setFolderColorToAddButton(I)V

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->resetPreCheckedItems()V

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->setCreateFolderAddButtonState(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->showAllApps()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismiss()V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doCreateFolder(Landroid/app/Dialog;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_a

    iget-object v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_10

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    :cond_2
    :goto_1
    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FOLDER_COLOR_1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FOLDER_COLOR_2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FOLDER_COLOR_3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FOLDER_COLOR_4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    iput v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FOLDER_COLOR_5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x4

    iput v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    :cond_7
    iget v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    invoke-interface {v1, v4}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->getCreateFolderColor(I)V

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iget-boolean v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iget-boolean v7, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    iget v8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    iget v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-interface/range {v1 .. v9}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_9
    return-void

    :cond_a
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    :cond_b
    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v2

    goto/16 :goto_0

    :cond_c
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_d

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_e

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_f

    :cond_e
    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v2

    goto/16 :goto_0

    :cond_10
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private init(Lcom/android/launcher2/BaseItem;JJZZII)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    iput-wide p2, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    :cond_0
    iput p8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    iput p9, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    iput-wide p4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iput-boolean p6, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iput-boolean p7, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "CreateFolderDialog"

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
.method public dismissAllowingStateLoss()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    const/4 v4, -0x1

    if-ne p2, v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iget-boolean v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iget-boolean v7, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    iget v8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    iget v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-interface/range {v1 .. v9}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V

    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_4
    return-void

    :cond_5
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    :cond_6
    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v2

    goto :goto_0

    :cond_7
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v2

    goto :goto_0

    :cond_8
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    :cond_9
    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v2

    goto :goto_0

    :cond_a
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 25

    new-instance v21, Landroid/app/Dialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const/high16 v23, 0x7f0e0000

    invoke-direct/range {v21 .. v23}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    const v22, 0x7f03000e

    invoke-virtual/range {v21 .. v22}, Landroid/app/Dialog;->setContentView(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const v21, 0x7f100029

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mForlderTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v21, 0x7f100028

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f080038

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const/16 v23, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/android/launcher2/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;ILandroid/widget/EditText;)[Landroid/text/InputFilter;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string v21, "ITEM_ID"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    const-string v21, "ITEM_ORIGIN_CONTAINER_ID"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-string v21, "ITEM_DESTINATION_CONTAINER_ID"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-string v21, "REMOVE_ITEM"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    const-string v21, "FIND_NEW_POSITION"

    const/16 v22, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    const-string v21, "ORIGINAL_CONTAINER_SCREEN"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    const-string v21, "ORIGINAL_CONTAINER_CELL"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    const-string v21, "FOLDER_TITLE"

    const-string v22, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    const/4 v4, 0x1

    :cond_0
    const v21, 0x7f10002a

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    const v21, 0x7f10002b

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v21, 0x7f10002c

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const v21, 0x7f10002d

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_8

    const/4 v5, 0x0

    :goto_1
    if-eqz v14, :cond_4

    sget-object v21, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v13

    const/4 v8, 0x0

    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_3

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    invoke-static {v6}, Lcom/android/launcher2/AppItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v22

    if-eqz v22, :cond_9

    check-cast v6, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v6}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v8, 0x1

    :cond_3
    :goto_2
    if-eqz v8, :cond_a

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_4

    new-instance v21, Lcom/android/launcher2/CreateFolderDialog$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/CreateFolderDialog$2;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v21, Lcom/android/launcher2/CreateFolderDialog$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/CreateFolderDialog$3;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_4
    :goto_3
    const v21, 0x7f10002e

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080048

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    const/16 v18, 0x0

    const v21, 0x7f03004a

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const v21, 0x102000b

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/launcher2/CreateFolderDialog$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CreateFolderDialog$4;-><init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/widget/Toast;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-static {}, Lcom/android/launcher2/framework/HoverPopupWindow;->TYPE_TOOLTIP()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v21

    const/16 v22, 0x25

    invoke-virtual/range {v21 .. v22}, Landroid/view/Window;->setSoftInputMode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/launcher2/CreateFolderDialog$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/CreateFolderDialog$5;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/launcher2/CreateFolderDialog$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/CreateFolderDialog$6;-><init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/view/View;)V

    invoke-virtual/range {v21 .. v22}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->dismiss()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    return-object v21

    :cond_7
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    const v21, 0x7f10002e

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_1

    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_a
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ITEM_ID"

    iget-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "ITEM_ORIGIN_CONTAINER_ID"

    iget-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "ITEM_DESTINATION_CONTAINER_ID"

    iget-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "REMOVE_ITEM"

    iget-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "FIND_NEW_POSITION"

    iget-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "FOLDER_TITLE"

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ORIGINAL_CONTAINER_SCREEN"

    iget v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ORIGINAL_CONTAINER_CELL"

    iget v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getShowsDialog()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method
