.class public Lcom/android/launcher2/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# static fields
.field public static final APPS_CUSTOMIZE_TABKEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDERNAME_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_ADDITEM_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final MENUAPPGRID_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final MENU_TILE_BAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final SCREEN_GRID_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final SEARCHAPPLIST_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final SEARCHAPPLIST_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final TAG:Ljava/lang/String; = "FocusHelper"

.field public static final WIDGET_FOLDER_WIDGET_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field private static mIsListViewScrolledNewRow:Z

.field private static sHomeView:Lcom/android/launcher2/HomeView;

.field private static sIsLoopingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    sput-boolean v0, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    new-instance v0, Lcom/android/launcher2/FocusHelper$1;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$2;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$3;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$3;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDERNAME_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$4;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$4;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_ADDITEM_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$5;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$5;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$6;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$6;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$7;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$7;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$8;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$8;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->SCREEN_GRID_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$9;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$9;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->MENU_TILE_BAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$10;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$10;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->MENUAPPGRID_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$11;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$11;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->SEARCHAPPLIST_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$12;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$12;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->SEARCHAPPLIST_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$13;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$13;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->APPS_CUSTOMIZE_TABKEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$14;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$14;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->WIDGET_FOLDER_WIDGET_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$15;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$15;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$16;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$16;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleWorkspaceIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleSearchAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleSearchAppListMenuKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300()Lcom/android/launcher2/HomeView;
    .locals 1

    sget-object v0, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderColorViewItemsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderNameKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderAddItemKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderOptionsButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleHomeOptionMenuonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleScreenGridMenuonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleTitleBarKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleMenuAppGridIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private static findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/Folder;

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int v1, p1, p2

    :goto_0
    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lcom/android/launcher2/AppIconView;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    add-int/2addr v1, p2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TabHost;

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewParent;

    :cond_1
    check-cast v0, Landroid/widget/TabHost;

    return-object v0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    return-object v1
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/launcher2/FocusHelper$19;

    invoke-direct {v4, v0}, Lcom/android/launcher2/FocusHelper$19;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v3
.end method

.method private static getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 22

    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    instance-of v15, v15, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v15, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int v8, v10, p3

    if-ltz v8, :cond_9

    if-ge v8, v2, :cond_9

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-gez p3, :cond_3

    const/4 v5, -0x1

    :goto_1
    if-eq v6, v5, :cond_8

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-gez p3, :cond_5

    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ge v15, v10, :cond_4

    const/4 v11, 0x1

    :goto_2
    if-eqz v11, :cond_1

    instance-of v15, v9, Lcom/android/launcher2/AppIconView;

    if-nez v15, :cond_0

    instance-of v15, v9, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v15, :cond_1

    :cond_0
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    sub-int v15, v15, v18

    int-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v12, v0

    cmpg-float v15, v12, v3

    if-gez v15, :cond_1

    move v4, v6

    move v3, v12

    :cond_1
    if-gt v6, v5, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    goto :goto_0

    :cond_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    :cond_5
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-le v15, v10, :cond_6

    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_8
    const/4 v15, -0x1

    if-le v4, v15, :cond_9

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    :goto_3
    return-object v15

    :cond_9
    const/4 v15, 0x0

    goto :goto_3
.end method

.method private static getFolderColorViewKey(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher2/Folder$FolderColor;

    :goto_0
    return-object v1

    :pswitch_0
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100038
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;
    .locals 3

    div-int v1, p1, p2

    rem-int v0, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2

    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2

    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/android/launcher2/CellLayoutMenu;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/CellLayoutFolder;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_1
    return-object v0
.end method

.method private static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/FocusOnlyTabWidget;

    invoke-static {v14}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v15

    const v19, 0x1020011

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v3, v0, :cond_0

    const/4 v7, 0x1

    :goto_0
    const/16 v18, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_1
    return v18

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v19

    if-eqz v19, :cond_4

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    :goto_2
    const/16 v18, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_1

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v13

    invoke-static {v10, v13}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v12

    if-eqz v12, :cond_3

    const-string v19, "WIDGETS"

    invoke-virtual {v15}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v9

    move-object/from16 v19, v12

    check-cast v19, Lcom/android/launcher2/CellLayoutChildren;

    add-int/lit8 v20, v8, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :cond_3
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v13

    invoke-static {v11, v13}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_5
    const/16 v18, 0x1

    goto/16 :goto_1

    :sswitch_1
    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_6
    const/16 v18, 0x1

    goto/16 :goto_1

    :sswitch_2
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_7

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    const/16 v18, 0x1

    goto/16 :goto_1

    :sswitch_3
    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_9

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_8
    :goto_3
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_b

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_3
        0x3d -> :sswitch_0
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method private static handleFolderAddItemKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13

    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    iget-object v9, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v3, v2, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    const v11, 0x7f100106

    invoke-virtual {v2, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v11, 0x1

    if-eq v0, v11, :cond_0

    const/4 v5, 0x1

    :goto_0
    const/4 v10, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_1
    return v10

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :sswitch_0
    if-eqz v5, :cond_1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    :goto_2
    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_1

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    invoke-virtual {v9}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/launcher2/FolderEditText;->playSoundEffect(I)V

    goto :goto_2

    :sswitch_1
    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    invoke-virtual {v1, v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3
    :goto_3
    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :sswitch_2
    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v11

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v12

    sub-int v6, v11, v12

    if-ltz v6, :cond_6

    invoke-virtual {v1, v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/View;->playSoundEffect(I)V

    :cond_5
    :goto_4
    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :cond_7
    if-eqz v9, :cond_5

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    invoke-virtual {v9}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/launcher2/FolderEditText;->playSoundEffect(I)V

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleFolderColorViewItemsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 19

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;

    move-result-object v6

    if-nez v6, :cond_0

    const/16 v16, 0x0

    :goto_0
    return v16

    :cond_0
    invoke-virtual {v6}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v12

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    const v17, 0x7f100035

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v10, v6, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    iget-object v9, v6, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->getFolderColorViewKey(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v2, v0, :cond_1

    const/4 v11, 0x1

    :goto_1
    const/16 v16, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v16, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :sswitch_1
    if-eqz v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->performClick()Z

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    :cond_2
    const/16 v16, 0x1

    goto :goto_0

    :sswitch_2
    if-eqz v11, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, -0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3
    :goto_2
    const/16 v16, 0x1

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :sswitch_3
    if-eqz v11, :cond_5

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v17

    if-eqz v17, :cond_6

    sget-object v4, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher2/Folder$FolderColor;

    :goto_3
    if-ne v8, v4, :cond_7

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_5
    :goto_4
    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_6
    sget-object v4, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v5, -0x1

    :goto_5
    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v17

    invoke-virtual {v8}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v18

    add-int v18, v18, v5

    aget-object v14, v17, v18

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->requestFocus()Z

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->playSoundEffect(I)V

    goto :goto_4

    :cond_8
    const/4 v5, 0x1

    goto :goto_5

    :sswitch_4
    if-eqz v11, :cond_9

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v17

    if-eqz v17, :cond_a

    sget-object v4, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher2/Folder$FolderColor;

    :goto_6
    if-ne v8, v4, :cond_b

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_9
    :goto_7
    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_a
    sget-object v4, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_6

    :cond_b
    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v17

    if-eqz v17, :cond_c

    const/4 v5, 0x1

    :goto_8
    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v17

    invoke-virtual {v8}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v18

    add-int v18, v18, v5

    aget-object v15, v17, v18

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->requestFocus()Z

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->playSoundEffect(I)V

    goto :goto_7

    :cond_c
    const/4 v5, -0x1

    goto :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_2
        0x15 -> :sswitch_4
        0x16 -> :sswitch_3
        0x3d -> :sswitch_3
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method private static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 25

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    if-eqz v23, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher2/MenuAppIconView;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Folder;

    iget-object v0, v7, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    move-object/from16 v19, v0

    iget-object v9, v7, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    const v23, 0x7f10003f

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v4

    move-object/from16 v23, v6

    check-cast v23, Lcom/android/launcher2/PagedView;

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v16

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v21, v0

    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v22, v0

    mul-int v23, v22, v4

    add-int v11, v23, v21

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_2

    const/4 v10, 0x1

    :goto_0
    const/16 v20, 0x0

    sget-boolean v23, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v23, :cond_1

    const/16 v23, 0x15

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const/16 p1, 0x16

    :cond_1
    :goto_1
    sparse-switch p1, :sswitch_data_0

    :goto_2
    return v20

    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    const/16 v23, 0x16

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 p1, 0x15

    goto :goto_1

    :sswitch_0
    if-eqz v10, :cond_4

    const/4 v14, 0x0

    if-lez v11, :cond_5

    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    if-gt v11, v0, :cond_5

    const/16 v23, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_4
    :goto_3
    const/16 v20, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v23, v6

    check-cast v23, Lcom/android/launcher2/PagedView;

    add-int/lit8 v24, v16, -0x1

    invoke-static/range {v23 .. v24}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v15

    if-eqz v15, :cond_4

    check-cast v6, Lcom/android/launcher2/PagedView;

    add-int/lit8 v23, v16, -0x1

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageFromFocusHelper(II)V

    move-object/from16 v23, v15

    check-cast v23, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v4}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :sswitch_1
    if-eqz v10, :cond_6

    const/4 v14, 0x0

    if-ltz v11, :cond_7

    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    if-ge v11, v0, :cond_7

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_6
    :goto_4
    const/16 v20, 0x1

    goto/16 :goto_2

    :cond_7
    move-object/from16 v23, v6

    check-cast v23, Lcom/android/launcher2/PagedView;

    add-int/lit8 v24, v16, 0x1

    invoke-static/range {v23 .. v24}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v15

    if-eqz v15, :cond_6

    check-cast v6, Lcom/android/launcher2/PagedView;

    add-int/lit8 v23, v16, 0x1

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageFromFocusHelper(II)V

    move-object/from16 v23, v15

    check-cast v23, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v4}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :sswitch_2
    if-eqz v10, :cond_8

    const/16 v23, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_8
    :goto_5
    const/16 v20, 0x1

    goto/16 :goto_2

    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v23

    if-nez v23, :cond_a

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    :cond_a
    if-eqz v19, :cond_8

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderEditText;->getSelectionStart()I

    move-result v23

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderEditText;->getSelectionStart()I

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/FolderEditText;->setSelection(II)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->playSoundEffect(I)V

    goto :goto_5

    :sswitch_3
    if-eqz v10, :cond_b

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_c

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_b
    :goto_6
    const/16 v20, 0x1

    goto/16 :goto_2

    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/view/View;->isFocused()Z

    move-result v23

    if-nez v23, :cond_d

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getAddButtonVisibility()I

    move-result v23

    if-nez v23, :cond_d

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_6

    :cond_d
    if-eqz v19, :cond_b

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->playSoundEffect(I)V

    goto :goto_6

    :sswitch_4
    if-eqz v10, :cond_e

    const/16 v23, -0x1

    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_e
    const/16 v20, 0x1

    goto/16 :goto_2

    :sswitch_5
    if-eqz v10, :cond_f

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v23

    const/16 v24, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_f
    const/16 v20, 0x1

    goto/16 :goto_2

    :sswitch_6
    if-eqz v10, :cond_10

    const/16 v23, 0x1

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher2/Folder;->close(ZZ)V

    :cond_10
    const/16 v20, 0x1

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x6f -> :sswitch_6
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method private static handleFolderNameKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 20

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;

    move-result-object v7

    move-object/from16 v16, p0

    check-cast v16, Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v11

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutChildren;

    const v18, 0x7f100106

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_1

    const/4 v9, 0x1

    :goto_0
    const/16 v17, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    return v17

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :sswitch_0
    if-eqz v9, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/FolderEditText;->getSelectionStart()I

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/FolderEditText;->getSelectionEnd()I

    move-result v18

    if-nez v18, :cond_0

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v18

    if-eqz v18, :cond_2

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_2
    const/16 v17, 0x1

    goto :goto_1

    :sswitch_1
    if-eqz v9, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/FolderEditText;->length()I

    move-result v12

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/FolderEditText;->getSelectionStart()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v12, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/FolderEditText;->getSelectionEnd()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v12, :cond_0

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, -0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3
    :goto_2
    const/16 v17, 0x1

    goto :goto_1

    :cond_4
    const/16 v18, -0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v14

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :cond_5
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v14}, Landroid/view/View;->hasFocus()Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :sswitch_2
    if-eqz v9, :cond_7

    sget-object v18, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v18

    if-eqz v18, :cond_6

    sget-object v18, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v18

    sget-object v19, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    sget-object v18, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/IconMoveContainer;->requestFocus()Z

    sget-object v18, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/IconMoveContainer;->playSoundEffect(I)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v13

    iget-object v0, v7, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/AppFolderItem;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_7

    invoke-virtual {v15, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    const/16 v17, 0x1

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :sswitch_3
    if-eqz v9, :cond_9

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, -0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_9
    const/16 v17, 0x1

    goto/16 :goto_1

    :sswitch_4
    if-eqz v9, :cond_a

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher2/Folder;->close(ZZ)V

    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x42 -> :sswitch_4
        0x6f -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleFolderOptionsButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 21

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v12

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutChildren;

    iget-object v0, v8, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    move-object/from16 v17, v0

    iget-object v9, v8, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    const v19, 0x7f100035

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v3, v0, :cond_0

    const/4 v10, 0x1

    :goto_0
    const/16 v18, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_1
    return v18

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :sswitch_0
    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_3

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    add-int/lit8 v15, v19, -0x1

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    :goto_2
    const/16 v18, 0x1

    goto :goto_1

    :cond_2
    if-eqz v17, :cond_1

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->playSoundEffect(I)V

    goto :goto_2

    :cond_3
    const/16 v19, -0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v12, v6, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :sswitch_1
    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v13

    iget-object v0, v8, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher2/AppFolderItem;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v16

    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v7, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_5
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :sswitch_2
    if-eqz v10, :cond_7

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_8

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    if-nez v19, :cond_7

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    :goto_4
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    if-nez v19, :cond_9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    add-int/lit8 v15, v19, -0x1

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :cond_9
    if-eqz v17, :cond_7

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->playSoundEffect(I)V

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_2
        0x16 -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleHomeOptionMenuonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f10007a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeScreenOptionMenu;

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_2

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeScreenOptionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeScreenOptionMenu;->removeViewAt(I)V

    add-int/lit8 v4, v4, -0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_1
    return v6

    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_4

    :goto_2
    const/4 v6, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x15

    if-ne p1, v8, :cond_5

    const/16 p1, 0x16

    :cond_3
    :goto_3
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    move v2, v7

    goto :goto_2

    :cond_5
    const/16 v8, 0x16

    if-ne p1, v8, :cond_3

    const/16 p1, 0x15

    goto :goto_3

    :sswitch_1
    if-eqz v2, :cond_7

    if-gtz v4, :cond_6

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->getChildCount()I

    move-result v4

    :cond_6
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/HomeScreenOptionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v1, v7}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_2
    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-lt v4, v8, :cond_8

    const/4 v4, -0x1

    :cond_8
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/HomeScreenOptionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v1, v7}, Landroid/view/View;->playSoundEffect(I)V

    :cond_9
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_3
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    invoke-virtual {p0, v7}, Landroid/view/View;->playSoundEffect(I)V

    :cond_a
    const/4 v6, 0x1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3d -> :sswitch_2
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method private static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 31

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v29

    const v30, 0x7f100078

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/android/launcher2/Workspace;

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v24

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v23

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    if-nez v8, :cond_0

    const-string v29, "FocusHelper"

    const-string v30, "handleHotseatButtonKeyEvent(). Couldn\'t get a cellLayout from current page."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    :goto_0
    :sswitch_0
    return v27

    :cond_0
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v8, v4, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v3, v0, :cond_4

    const/4 v13, 0x1

    :goto_1
    const/16 v27, 0x0

    sget-boolean v29, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v29, :cond_1

    const/16 v29, 0x15

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    const/16 p1, 0x16

    :cond_1
    :goto_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    if-eqz v13, :cond_3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->isFinished()Z

    move-result v29

    if-nez v29, :cond_2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v24

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v29

    if-nez v29, :cond_1d

    const/16 v29, 0x2

    move/from16 v0, p3

    move/from16 v1, v29

    if-ne v0, v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    const/16 v29, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v9, v12, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3
    :goto_3
    const/16 v27, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    :cond_5
    const/16 v29, 0x16

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    const/16 p1, 0x15

    goto :goto_2

    :sswitch_2
    if-eqz v13, :cond_7

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->isFinished()Z

    move-result v29

    if-nez v29, :cond_6

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->timePassed()I

    move-result v29

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Scroller;->getDuration()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_8

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v24

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v8, v4, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v18

    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v29

    if-nez v29, :cond_d

    const/16 v29, 0x2

    move/from16 v0, p3

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    :goto_4
    const/16 v27, 0x1

    goto/16 :goto_0

    :cond_8
    const/16 v27, 0x1

    goto/16 :goto_0

    :cond_9
    if-lez v24, :cond_b

    add-int/lit8 v26, v24, -0x1

    :goto_5
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v29

    if-eqz v29, :cond_a

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v29

    if-eqz v29, :cond_a

    sget v29, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    move/from16 v26, v24

    :cond_a
    move/from16 v0, v26

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v29

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v10, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :cond_b
    sget-boolean v29, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v29, :cond_c

    add-int/lit8 v26, v23, -0x1

    goto :goto_5

    :cond_c
    move/from16 v26, v24

    goto :goto_5

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    const/16 v29, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v9, v12, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_4

    :cond_e
    if-lez v24, :cond_10

    add-int/lit8 v26, v24, -0x1

    :goto_6
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v29

    if-eqz v29, :cond_f

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v29

    if-eqz v29, :cond_f

    sget v29, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    move/from16 v26, v24

    :cond_f
    move/from16 v0, v26

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v29

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v10, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_7

    const/16 v29, 0x80

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_4

    :cond_10
    sget-boolean v29, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v29, :cond_11

    add-int/lit8 v26, v23, -0x1

    goto :goto_6

    :cond_11
    move/from16 v26, v24

    goto :goto_6

    :cond_12
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v29

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v10, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_4

    :sswitch_3
    if-eqz v13, :cond_14

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->isFinished()Z

    move-result v29

    if-nez v29, :cond_13

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->timePassed()I

    move-result v29

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Scroller;->getDuration()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_15

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v24

    :cond_13
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v29

    if-nez v29, :cond_18

    const/16 v29, 0x2

    move/from16 v0, p3

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    add-int/lit8 v29, v23, -0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_16

    add-int/lit8 v22, v24, 0x1

    :goto_7
    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_14

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayout;

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v11, v6, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_14

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_14
    :goto_8
    const/16 v27, 0x1

    goto/16 :goto_0

    :cond_15
    const/16 v27, 0x1

    goto/16 :goto_0

    :cond_16
    sget-boolean v29, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v29, :cond_17

    const/16 v22, 0x0

    goto :goto_7

    :cond_17
    move/from16 v22, v24

    goto :goto_7

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v9, v12, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_19

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_8

    :cond_19
    add-int/lit8 v29, v23, -0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_1a

    add-int/lit8 v22, v24, 0x1

    :goto_9
    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayout;

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v11, v6, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_14

    const/16 v29, 0x80

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_8

    :cond_1a
    sget-boolean v29, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v29, :cond_1b

    const/16 v22, 0x0

    goto :goto_9

    :cond_1b
    move/from16 v22, v24

    goto :goto_9

    :cond_1c
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayout;

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v11, v6, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_14

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_8

    :cond_1d
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->is12KEYNaviKeyFocus(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_1e

    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v15, v7, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_1f

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_3

    :cond_1f
    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v29

    sget-object v30, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_20

    sget-object v29, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/IconMoveContainer;->requestFocus()Z

    sget-object v29, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/launcher2/IconMoveContainer;->playSoundEffect(I)V

    goto/16 :goto_3

    :cond_20
    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->requestFocus()Z

    goto/16 :goto_3

    :sswitch_4
    if-eqz v13, :cond_22

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->isFinished()Z

    move-result v29

    if-nez v29, :cond_21

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v24

    :cond_21
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v29

    if-nez v29, :cond_22

    const/16 v29, 0x2

    move/from16 v0, p3

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v9, v12, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_22
    const/16 v27, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleMenuAppGridIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 30

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v8

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v9

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/MenuAppsGrid;

    if-nez v18, :cond_1

    const/16 v25, 0x0

    :cond_0
    :goto_0
    return v25

    :cond_1
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v28

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->indexToPage(I)I

    move-result v22

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v21

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v27, v0

    mul-int v28, v27, v8

    add-int v13, v28, v26

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/16 v28, 0x1

    move/from16 v0, v28

    if-eq v3, v0, :cond_5

    const/4 v11, 0x1

    :goto_1
    const/16 v19, 0x0

    const/4 v5, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    sget-boolean v28, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v28, :cond_3

    const/16 v28, 0x15

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    const/16 p1, 0x16

    :cond_2
    :goto_2
    const/16 v28, 0x5c

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    const/16 p1, 0x5d

    :cond_3
    :goto_3
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-eqz v11, :cond_4

    if-lez v27, :cond_10

    add-int/lit8 v28, v27, -0x1

    mul-int v28, v28, v8

    add-int v20, v28, v26

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_4
    :goto_4
    const/16 v25, 0x1

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    :cond_6
    const/16 v28, 0x16

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    const/16 p1, 0x15

    goto :goto_2

    :cond_7
    const/16 v28, 0x5d

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    const/16 p1, 0x5c

    goto :goto_3

    :sswitch_1
    if-eqz v11, :cond_8

    if-lez v13, :cond_9

    add-int/lit8 v28, v13, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_8
    :goto_5
    const/16 v25, 0x1

    goto/16 :goto_0

    :cond_9
    if-lez v22, :cond_a

    add-int/lit8 v28, v22, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v19

    if-eqz v19, :cond_8

    add-int/lit8 v28, v22, -0x1

    const/16 v29, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageFromFocusHelper(II)V

    move-object/from16 v28, v19

    check-cast v28, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    :cond_a
    sget-boolean v28, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v28, :cond_8

    add-int/lit8 v28, v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v19

    if-eqz v19, :cond_8

    add-int/lit8 v28, v21, -0x1

    const/16 v29, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageFromFocusHelper(II)V

    move-object/from16 v28, v19

    check-cast v28, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    :sswitch_2
    if-eqz v11, :cond_b

    add-int/lit8 v28, v15, -0x1

    move/from16 v0, v28

    if-ge v13, v0, :cond_c

    add-int/lit8 v28, v13, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_b
    :goto_6
    const/16 v25, 0x1

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v28, v21, -0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    add-int/lit8 v28, v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v19

    if-eqz v19, :cond_b

    add-int/lit8 v28, v22, 0x1

    const/16 v29, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageFromFocusHelper(II)V

    move-object/from16 v28, v19

    check-cast v28, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_6

    :cond_d
    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v24

    if-eqz v24, :cond_b

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v6, :cond_b

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v28

    if-nez v28, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_6

    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_f
    sget-boolean v28, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v28, :cond_b

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v19

    if-eqz v19, :cond_b

    const/16 v28, 0x0

    const/16 v29, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageFromFocusHelper(II)V

    move-object/from16 v28, v19

    check-cast v28, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_6

    :cond_10
    if-eqz v18, :cond_4

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v28

    sget-object v29, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_11

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v24

    :goto_8
    if-eqz v24, :cond_4

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v6, :cond_4

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v28

    if-nez v28, :cond_13

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_4

    :cond_11
    const/16 v28, 0x3

    move/from16 v0, v28

    if-ge v13, v0, :cond_12

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->getMenuAppsSearchBar()Landroid/view/ViewGroup;

    move-result-object v24

    goto :goto_8

    :cond_12
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->getMenuAppsMoreButton()Landroid/view/ViewGroup;

    move-result-object v24

    goto :goto_8

    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :sswitch_3
    if-eqz v11, :cond_14

    add-int/lit8 v28, v9, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_14

    add-int/lit8 v28, v15, -0x1

    add-int/lit8 v29, v27, 0x1

    mul-int v29, v29, v8

    add-int v29, v29, v26

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_14
    const/16 v25, 0x1

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v28, v0

    if-eqz v28, :cond_15

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->isPageMoving()Z

    move-result v28

    if-eqz v28, :cond_15

    const/16 v25, 0x1

    goto/16 :goto_0

    :cond_15
    iget v0, v7, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    iget v0, v7, Landroid/content/res/Configuration;->navigation:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    :cond_16
    move-object/from16 v0, v23

    invoke-static {v0, v13, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-nez v11, :cond_18

    if-eqz v5, :cond_18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->onClick(Landroid/view/View;)V

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_17
    :goto_a
    const/16 v25, 0x1

    goto/16 :goto_0

    :cond_18
    if-eqz v11, :cond_17

    if-eqz v5, :cond_17

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v28

    sget-object v29, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v28, v0

    if-eqz v28, :cond_17

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->onClick(Landroid/view/View;)V

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_a

    :sswitch_5
    if-eqz v11, :cond_19

    if-lez v22, :cond_1a

    add-int/lit8 v28, v22, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v19

    if-eqz v19, :cond_19

    add-int/lit8 v28, v22, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    move-object/from16 v28, v19

    check-cast v28, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_19
    :goto_b
    const/16 v25, 0x1

    goto/16 :goto_0

    :cond_1a
    if-eqz v13, :cond_19

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_b

    :sswitch_6
    if-eqz v11, :cond_1b

    add-int/lit8 v28, v21, -0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_1c

    add-int/lit8 v28, v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v19

    if-eqz v19, :cond_1b

    add-int/lit8 v28, v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    move-object/from16 v28, v19

    check-cast v28, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1b
    :goto_c
    const/16 v25, 0x1

    goto/16 :goto_0

    :cond_1c
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v28

    add-int/lit8 v16, v28, -0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_1b

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_c

    :sswitch_7
    if-eqz v11, :cond_1d

    if-eqz v13, :cond_1d

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1d
    const/16 v25, 0x1

    goto/16 :goto_0

    :sswitch_8
    if-eqz v11, :cond_1e

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v28

    add-int/lit8 v16, v28, -0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_1e

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1e
    const/16 v25, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handlePagedViewWidgetKeyEvent(Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 32

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/android/launcher2/PagedViewGridLayout;

    move/from16 v29, v0

    if-nez v29, :cond_0

    const/16 v24, 0x0

    :goto_0
    return v24

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/MenuWidgets;

    invoke-static {v15}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v22

    const v29, 0x1020013

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TabWidget;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v26

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v25

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuWidgets;->indexOfChild(Landroid/view/View;)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuWidgets;->indexToPage(I)I

    move-result v19

    invoke-virtual {v15}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v18

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v7

    rem-int v27, v26, v6

    div-int v28, v26, v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v4, v0, :cond_4

    const/4 v12, 0x1

    :goto_1
    const/16 v16, 0x0

    const/4 v8, 0x0

    const/16 v24, 0x0

    sget-boolean v29, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v29, :cond_2

    const/16 v29, 0x15

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    const/16 p1, 0x16

    :cond_1
    :goto_2
    const/16 v29, 0x5c

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    const/16 p1, 0x5d

    :cond_2
    :goto_3
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-eqz v12, :cond_3

    if-lez v28, :cond_d

    add-int/lit8 v29, v28, -0x1

    mul-int v29, v29, v6

    add-int v17, v29, v27

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3
    :goto_4
    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    const/16 v29, 0x16

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    const/16 p1, 0x15

    goto :goto_2

    :cond_6
    const/16 v29, 0x5d

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    const/16 p1, 0x5c

    goto :goto_3

    :sswitch_1
    if-eqz v12, :cond_7

    if-lez v26, :cond_8

    add-int/lit8 v29, v26, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->requestFocus()Z

    add-int/lit8 v29, v26, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    :goto_5
    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_8
    if-lez v19, :cond_9

    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    if-eqz v16, :cond_7

    add-int/lit8 v29, v19, -0x1

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/MenuWidgets;->snapToPageFromFocusHelper(II)V

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    :cond_9
    sget-boolean v29, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v29, :cond_7

    add-int/lit8 v29, v18, -0x1

    move/from16 v0, v29

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    if-eqz v16, :cond_7

    add-int/lit8 v29, v18, -0x1

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuWidgets;->snapToPage(I)V

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v29, Lcom/android/launcher2/FocusHelper$17;

    move-object/from16 v0, v29

    invoke-direct {v0, v10}, Lcom/android/launcher2/FocusHelper$17;-><init>(Landroid/view/View;)V

    const-wide/16 v30, 0x96

    move-object/from16 v0, v29

    move-wide/from16 v1, v30

    invoke-virtual {v14, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :sswitch_2
    if-eqz v12, :cond_a

    add-int/lit8 v29, v25, -0x1

    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    add-int/lit8 v29, v26, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->requestFocus()Z

    add-int/lit8 v29, v26, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->playSoundEffect(I)V

    :cond_a
    :goto_6
    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v29, v18, -0x1

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    add-int/lit8 v29, v19, 0x1

    move/from16 v0, v29

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    if-eqz v16, :cond_a

    add-int/lit8 v29, v19, 0x1

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/MenuWidgets;->snapToPageFromFocusHelper(II)V

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_6

    :cond_c
    sget-boolean v29, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v29, :cond_a

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    if-eqz v16, :cond_a

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuWidgets;->snapToPage(I)V

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v29, Lcom/android/launcher2/FocusHelper$18;

    move-object/from16 v0, v29

    invoke-direct {v0, v10}, Lcom/android/launcher2/FocusHelper$18;-><init>(Landroid/view/View;)V

    const-wide/16 v30, 0x96

    move-object/from16 v0, v29

    move-wide/from16 v1, v30

    invoke-virtual {v14, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_d
    invoke-virtual {v15}, Lcom/android/launcher2/MenuWidgets;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v21

    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v9, :cond_3

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    if-nez v29, :cond_e

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :sswitch_3
    if-eqz v12, :cond_f

    add-int/lit8 v29, v7, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_f

    add-int/lit8 v29, v25, -0x1

    add-int/lit8 v30, v28, 0x1

    mul-int v30, v30, v6

    add-int v30, v30, v27

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroid/view/View;->isFocused()Z

    move-result v29

    if-nez v29, :cond_f

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_f
    const/16 v24, 0x1

    goto/16 :goto_0

    :sswitch_4
    if-eqz v12, :cond_10

    move-object v11, v15

    move-object/from16 v0, p0

    invoke-interface {v11, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->playSoundEffect(I)V

    :cond_10
    const/16 v24, 0x1

    goto/16 :goto_0

    :sswitch_5
    if-eqz v12, :cond_12

    if-lez v19, :cond_13

    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    if-eqz v16, :cond_11

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    :cond_11
    :goto_8
    if-eqz v8, :cond_12

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v29

    if-nez v29, :cond_12

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_12
    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_13
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    goto :goto_8

    :sswitch_6
    if-eqz v12, :cond_15

    add-int/lit8 v29, v18, -0x1

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_16

    add-int/lit8 v29, v19, 0x1

    move/from16 v0, v29

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    if-eqz v16, :cond_14

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    :cond_14
    :goto_9
    if-eqz v8, :cond_15

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v29

    if-nez v29, :cond_15

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_15
    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_16
    add-int/lit8 v29, v25, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    goto :goto_9

    :sswitch_7
    if-eqz v12, :cond_17

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v29

    if-nez v29, :cond_17

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_17
    const/16 v24, 0x1

    goto/16 :goto_0

    :sswitch_8
    if-eqz v12, :cond_18

    add-int/lit8 v29, v25, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v29

    if-nez v29, :cond_18

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_18
    const/16 v24, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_4
        0x3d -> :sswitch_2
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method private static handleScreenGridMenuonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11

    const/4 v2, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    const v10, 0x7f1000e3

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    const v10, 0x7f1000e8

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    instance-of v8, v4, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    move-object v8, v4

    check-cast v8, Landroid/widget/TextView;

    const v10, 0x7f090270

    invoke-static {v8, v10}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    :cond_0
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    :goto_0
    const/4 v7, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x15

    if-ne p1, v8, :cond_3

    const/16 p1, 0x16

    :cond_1
    :goto_1
    sparse-switch p1, :sswitch_data_0

    :goto_2
    return v7

    :cond_2
    move v2, v9

    goto :goto_0

    :cond_3
    const/16 v8, 0x16

    if-ne p1, v8, :cond_1

    const/16 p1, 0x15

    goto :goto_1

    :sswitch_0
    if-eqz v2, :cond_5

    if-gtz v3, :cond_4

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    :cond_4
    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v1, v9}, Landroid/view/View;->playSoundEffect(I)V

    :cond_5
    const/4 v7, 0x1

    goto :goto_2

    :sswitch_1
    if-eqz v2, :cond_7

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-lt v3, v8, :cond_6

    const/4 v3, -0x1

    :cond_6
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v1, v9}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    const/4 v7, 0x1

    goto :goto_2

    :sswitch_2
    if-eqz v2, :cond_8

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v4, v9}, Landroid/view/View;->playSoundEffect(I)V

    :cond_8
    const/4 v7, 0x1

    goto :goto_2

    :sswitch_3
    if-eqz v2, :cond_9

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->requestFocus()Z

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    :cond_9
    const/4 v7, 0x1

    goto :goto_2

    :sswitch_4
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    :cond_a
    const/4 v7, 0x1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleSearchAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lcom/android/launcher2/searchapp/AppViewHolder;

    move-object/from16 v20, v22

    check-cast v20, [Lcom/android/launcher2/searchapp/AppViewHolder;

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    if-nez v22, :cond_1

    :cond_0
    const/16 v21, 0x0

    :goto_0
    return v21

    :cond_1
    invoke-virtual {v10}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0b0029

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v22, 0x0

    aget-object v22, v20, v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->rowIndex:I

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v2, v0, :cond_2

    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    if-eqz v22, :cond_5

    :cond_2
    const/4 v6, 0x1

    :goto_1
    const/16 v21, 0x0

    sget-boolean v22, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v22, :cond_4

    const/16 v22, 0x15

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const/16 p1, 0x16

    :cond_3
    :goto_2
    const/16 v22, 0x5c

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 p1, 0x5d

    :cond_4
    :goto_3
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-eqz v6, :cond_1e

    if-lez v17, :cond_23

    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/lit8 v22, v5, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_1a

    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    if-nez v22, :cond_1a

    add-int/lit8 v22, v17, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    const/16 v21, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    const/16 v22, 0x16

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/16 p1, 0x15

    goto :goto_2

    :cond_7
    const/16 v22, 0x5d

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/16 p1, 0x5c

    goto :goto_3

    :sswitch_1
    if-eqz v6, :cond_8

    const v22, 0x7f1000ec

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/SearchView;

    const v22, 0x7f100018

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v22

    if-nez v22, :cond_9

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->playSoundEffect(I)V

    :cond_8
    :goto_4
    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SearchView;->requestFocus()Z

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->playSoundEffect(I)V

    goto :goto_4

    :sswitch_2
    if-eqz v6, :cond_a

    if-lez v7, :cond_b

    add-int/lit8 v22, v7, -0x1

    aget-object v22, v20, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->requestFocus()Z

    add-int/lit8 v22, v7, -0x1

    aget-object v22, v20, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    :cond_a
    :goto_5
    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_b
    if-lez v17, :cond_13

    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/lit8 v22, v5, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    if-nez v22, :cond_c

    add-int/lit8 v22, v17, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v22, v5, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    if-nez v22, :cond_d

    add-int/lit8 v22, v17, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_d
    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    if-eqz v22, :cond_e

    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    :cond_e
    add-int/lit8 v22, v17, -0x1

    sub-int v22, v22, v5

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    if-nez v14, :cond_f

    const-string v22, "FocusHelper"

    const-string v23, "preRowView is not visible yet (left)"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lcom/android/launcher2/searchapp/AppViewHolder;

    move-object/from16 v15, v22

    check-cast v15, [Lcom/android/launcher2/searchapp/AppViewHolder;

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v11, :cond_10

    aget-object v22, v15, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    if-nez v22, :cond_12

    add-int/lit8 v9, v9, -0x1

    :cond_10
    if-ne v9, v11, :cond_11

    add-int/lit8 v9, v9, -0x1

    :cond_11
    aget-object v22, v15, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->requestFocus()Z

    aget-object v22, v15, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    goto/16 :goto_5

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_13
    aget-object v22, v20, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->clearFocus()V

    const v22, 0x7f1000ec

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/SearchView;

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SearchView;->requestFocus()Z

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->playSoundEffect(I)V

    goto/16 :goto_5

    :sswitch_3
    if-eqz v6, :cond_14

    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    if-ge v7, v0, :cond_15

    add-int/lit8 v22, v7, 0x1

    aget-object v22, v20, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    if-eqz v22, :cond_15

    add-int/lit8 v22, v7, 0x1

    aget-object v22, v20, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->requestFocus()Z

    add-int/lit8 v22, v7, 0x1

    aget-object v22, v20, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    :cond_14
    :goto_7
    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v10}, Landroid/widget/ListView;->getCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {v10}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v8

    add-int/lit8 v22, v8, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_16

    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    if-nez v22, :cond_16

    add-int/lit8 v22, v17, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_16
    add-int/lit8 v22, v8, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    if-nez v22, :cond_17

    add-int/lit8 v22, v17, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_17
    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    if-eqz v22, :cond_18

    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    :cond_18
    add-int/lit8 v22, v17, 0x1

    sub-int v22, v22, v5

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    if-nez v12, :cond_19

    const-string v22, "FocusHelper"

    const-string v23, "nextRowView is not visible yet (right)"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lcom/android/launcher2/searchapp/AppViewHolder;

    move-object/from16 v13, v22

    check-cast v13, [Lcom/android/launcher2/searchapp/AppViewHolder;

    const/16 v22, 0x0

    aget-object v22, v13, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->requestFocus()Z

    const/16 v22, 0x0

    aget-object v22, v13, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    goto/16 :goto_7

    :cond_1a
    add-int/lit8 v22, v5, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_1b

    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    if-nez v22, :cond_1b

    add-int/lit8 v22, v17, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_1b
    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    if-eqz v22, :cond_1c

    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    :cond_1c
    add-int/lit8 v22, v17, -0x1

    sub-int v22, v22, v5

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    if-nez v14, :cond_1d

    const-string v22, "FocusHelper"

    const-string v23, "preRowView is not visible yet"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lcom/android/launcher2/searchapp/AppViewHolder;

    move-object/from16 v15, v22

    check-cast v15, [Lcom/android/launcher2/searchapp/AppViewHolder;

    aget-object v22, v15, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    if-eqz v22, :cond_1f

    aget-object v22, v15, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->requestFocus()Z

    aget-object v22, v15, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    :cond_1e
    :goto_8
    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_1f
    const/4 v9, 0x0

    :goto_9
    if-ge v9, v7, :cond_20

    aget-object v22, v15, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    if-nez v22, :cond_22

    add-int/lit8 v9, v9, -0x1

    :cond_20
    if-ne v9, v7, :cond_21

    add-int/lit8 v9, v9, -0x1

    :cond_21
    aget-object v22, v15, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->requestFocus()Z

    aget-object v22, v15, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    goto :goto_8

    :cond_22
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_23
    aget-object v22, v20, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->clearFocus()V

    const v22, 0x7f1000ec

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/SearchView;

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SearchView;->requestFocus()Z

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->playSoundEffect(I)V

    goto :goto_8

    :sswitch_4
    if-eqz v6, :cond_28

    invoke-virtual {v10}, Landroid/widget/ListView;->getCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_28

    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {v10}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v8

    add-int/lit8 v22, v8, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_24

    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    if-nez v22, :cond_24

    add-int/lit8 v22, v17, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_24
    add-int/lit8 v22, v8, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_25

    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    if-nez v22, :cond_25

    add-int/lit8 v22, v17, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_25
    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    if-eqz v22, :cond_26

    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/launcher2/FocusHelper;->mIsListViewScrolledNewRow:Z

    :cond_26
    add-int/lit8 v22, v17, 0x1

    sub-int v22, v22, v5

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    if-nez v12, :cond_27

    const-string v22, "FocusHelper"

    const-string v23, "nextRowView is not visible yet"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_27
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lcom/android/launcher2/searchapp/AppViewHolder;

    move-object/from16 v13, v22

    check-cast v13, [Lcom/android/launcher2/searchapp/AppViewHolder;

    aget-object v22, v13, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    if-eqz v22, :cond_29

    aget-object v22, v13, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->requestFocus()Z

    aget-object v22, v13, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    :cond_28
    :goto_a
    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_29
    const/4 v9, 0x0

    :goto_b
    if-ge v9, v7, :cond_2a

    aget-object v22, v13, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    if-nez v22, :cond_2c

    add-int/lit8 v9, v9, -0x1

    :cond_2a
    if-ne v9, v7, :cond_2b

    add-int/lit8 v9, v9, -0x1

    :cond_2b
    aget-object v22, v13, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->requestFocus()Z

    aget-object v22, v13, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    goto :goto_a

    :cond_2c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :sswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2d

    aget-object v22, v20, v7

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v22

    if-eqz v22, :cond_2e

    const/16 v22, 0x0

    :goto_c
    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    :cond_2d
    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_2e
    const/16 v22, 0x1

    goto :goto_c

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_5
        0x3d -> :sswitch_1
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method private static handleSearchAppListMenuKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 24

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v20

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_0

    const/16 v19, 0x0

    :goto_0
    :sswitch_0
    return v19

    :cond_0
    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f100018

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    :goto_1
    const-string v20, "FocusHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleSearchAppListMenuKeyEvent "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v2, v0, :cond_5

    const/4 v9, 0x1

    :goto_2
    sget-boolean v20, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v20, :cond_2

    const/16 v20, 0x15

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/16 p1, 0x16

    :cond_1
    :goto_3
    const/16 v20, 0x5c

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/16 p1, 0x5d

    :cond_2
    :goto_4
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    if-eqz v9, :cond_3

    if-eqz v12, :cond_15

    const v20, 0x7f100018

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v20

    if-nez v20, :cond_14

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->playSoundEffect(I)V

    :cond_3
    :goto_5
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/16 v20, 0x16

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 p1, 0x15

    goto :goto_3

    :cond_7
    const/16 v20, 0x5d

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 p1, 0x5c

    goto :goto_4

    :sswitch_2
    if-eqz v9, :cond_9

    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const-string v21, "android:id/search_src_text"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    if-eqz v11, :cond_8

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const-string v21, "android:id/search_voice_btn"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getVisibility()I

    move-result v20

    if-nez v20, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v20

    if-eqz v20, :cond_a

    const v20, 0x7f1000ec

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/SearchView;

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    invoke-virtual/range {v16 .. v16}, Landroid/widget/SearchView;->requestFocus()Z

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->playSoundEffect(I)V

    :cond_9
    :goto_6
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v5, :cond_9

    const v20, 0x7f100018

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v20

    if-nez v20, :cond_9

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->playSoundEffect(I)V

    goto :goto_6

    :cond_b
    if-lez v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const-string v21, "android:id/search_close_btn"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v20

    if-nez v20, :cond_c

    invoke-virtual {v4}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v20

    if-eqz v20, :cond_c

    const v20, 0x7f1000ec

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/SearchView;

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    invoke-virtual/range {v16 .. v16}, Landroid/widget/SearchView;->requestFocus()Z

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->playSoundEffect(I)V

    goto :goto_6

    :cond_c
    check-cast p0, Landroid/widget/EditText;

    add-int/lit8 v20, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_6

    :sswitch_3
    if-eqz v9, :cond_d

    if-nez v12, :cond_e

    const v20, 0x7f1000ec

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/SearchView;

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    invoke-virtual/range {v16 .. v16}, Landroid/widget/SearchView;->requestFocus()Z

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->playSoundEffect(I)V

    :cond_d
    :goto_7
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const-string v21, "android:id/search_src_text"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    if-eqz v11, :cond_f

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const-string v21, "android:id/search_voice_btn"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getVisibility()I

    move-result v20

    if-nez v20, :cond_10

    if-nez v5, :cond_10

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->requestFocus()Z

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->playSoundEffect(I)V

    goto :goto_7

    :cond_10
    const v20, 0x7f1000f0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Lcom/android/launcher2/searchapp/AppViewHolder;

    move-object/from16 v14, v20

    check-cast v14, [Lcom/android/launcher2/searchapp/AppViewHolder;

    const/16 v20, 0x0

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->requestFocus()Z

    const/16 v20, 0x0

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    goto/16 :goto_7

    :cond_11
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v5, v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const-string v21, "android:id/search_close_btn"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->requestFocus()Z

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->playSoundEffect(I)V

    goto/16 :goto_7

    :cond_12
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v20, v0

    if-eqz v20, :cond_13

    check-cast p0, Landroid/widget/EditText;

    add-int/lit8 v20, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_7

    :cond_13
    const-string v20, "FocusHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "invalid view for focus : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_5

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_5

    :sswitch_4
    if-eqz v9, :cond_17

    if-eqz v12, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const-string v21, "android:id/search_src_text"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_16

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    :cond_16
    const v20, 0x7f1000f0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    :goto_8
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Lcom/android/launcher2/searchapp/AppViewHolder;

    move-object/from16 v14, v20

    check-cast v14, [Lcom/android/launcher2/searchapp/AppViewHolder;

    const/16 v20, 0x0

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->requestFocus()Z

    const/16 v20, 0x0

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    :cond_17
    :goto_9
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_18
    const v20, 0x7f1000f4

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    goto :goto_8

    :cond_19
    const v20, 0x7f1000ec

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/SearchView;

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    invoke-virtual/range {v16 .. v16}, Landroid/widget/SearchView;->requestFocus()Z

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->playSoundEffect(I)V

    goto :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method static handleTabKeyEvent(Lcom/android/launcher2/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v9

    if-nez v9, :cond_0

    move v7, v8

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    invoke-static {v3}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    const v9, 0x1020011

    invoke-virtual {v5, v9}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v4

    invoke-virtual {v3, p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabIndex(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_1

    :goto_1
    const/4 v7, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    move v2, v8

    goto :goto_1

    :sswitch_1
    if-eqz v2, :cond_2

    if-lez v6, :cond_2

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    if-eqz v2, :cond_3

    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_4

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_2
    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :sswitch_3
    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_5
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_4
    const/4 v7, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleTitleBarKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleWidgetFolderPagedViewWidgetKeyEvent(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 22

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/widget/GridLayout;

    invoke-virtual {v13}, Landroid/widget/GridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/WidgetFolderPagedView;

    invoke-virtual {v12}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageCount()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/widget/GridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v17

    invoke-virtual {v13}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v16

    invoke-virtual {v13}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v3

    div-int/lit8 v20, v16, 0x2

    rem-int/lit8 v21, v16, 0x2

    add-int v4, v20, v21

    rem-int v18, v17, v3

    div-int v19, v17, v3

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v2, v0, :cond_1

    const/4 v7, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v15, 0x0

    sget-boolean v20, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v20, :cond_0

    const/16 v20, 0x15

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 p2, 0x16

    :cond_0
    :goto_1
    sparse-switch p2, :sswitch_data_0

    :goto_2
    return v15

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/16 v20, 0x16

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/16 p2, 0x15

    goto :goto_1

    :sswitch_0
    if-eqz v7, :cond_3

    if-lez v17, :cond_4

    add-int/lit8 v20, v17, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->requestFocus()Z

    add-int/lit8 v20, v17, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3
    :goto_3
    const/4 v15, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v12, v13}, Lcom/android/launcher2/WidgetFolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v20

    add-int/lit8 v14, v20, -0x1

    if-ltz v14, :cond_3

    invoke-virtual {v12, v14}, Lcom/android/launcher2/WidgetFolderPagedView;->snapToPage(I)V

    invoke-virtual {v12, v14}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridLayout;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v8}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :sswitch_1
    if-eqz v7, :cond_5

    add-int/lit8 v20, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->requestFocus()Z

    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->playSoundEffect(I)V

    :cond_5
    :goto_4
    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v12, v13}, Lcom/android/launcher2/WidgetFolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v20

    add-int/lit8 v10, v20, 0x1

    add-int/lit8 v20, v11, -0x1

    move/from16 v0, v20

    if-gt v10, v0, :cond_5

    invoke-virtual {v12, v10}, Lcom/android/launcher2/WidgetFolderPagedView;->snapToPage(I)V

    invoke-virtual {v12, v10}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridLayout;

    if-eqz v8, :cond_5

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->requestFocus()Z

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :sswitch_2
    if-eqz v7, :cond_7

    if-lez v19, :cond_7

    add-int/lit8 v20, v19, -0x1

    mul-int v20, v20, v3

    add-int v9, v20, v18

    invoke-virtual {v13, v9}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    const/4 v15, 0x1

    goto/16 :goto_2

    :sswitch_3
    if-eqz v7, :cond_8

    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    add-int/lit8 v20, v16, -0x1

    add-int/lit8 v21, v19, 0x1

    mul-int v21, v21, v3

    add-int v21, v21, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v13, v9}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v20

    if-nez v20, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_8
    const/4 v15, 0x1

    goto/16 :goto_2

    :sswitch_4
    if-eqz v7, :cond_9

    if-eqz p0, :cond_9

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    invoke-interface {v6, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->playSoundEffect(I)V

    :cond_9
    const/4 v15, 0x1

    goto/16 :goto_2

    :sswitch_5
    if-eqz v7, :cond_a

    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_2

    :sswitch_6
    if-eqz v7, :cond_b

    :cond_b
    const/4 v15, 0x1

    goto/16 :goto_2

    :sswitch_7
    if-eqz v7, :cond_c

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v20

    if-nez v20, :cond_c

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_c
    const/4 v15, 0x1

    goto/16 :goto_2

    :sswitch_8
    if-eqz v7, :cond_d

    add-int/lit8 v20, v16, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v20

    if-nez v20, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_d
    const/4 v15, 0x1

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3d -> :sswitch_1
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method private static handleWorkspaceIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 22

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher2/CellLayoutChildren;

    move/from16 v19, v0

    if-nez v19, :cond_2

    :cond_0
    const/16 v17, 0x1

    :cond_1
    :goto_0
    return v17

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v17, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Workspace;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const v19, 0x7f100006

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Hotseat;

    if-nez v7, :cond_4

    sget-object v19, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v7

    :cond_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v14

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v2, v0, :cond_8

    const/4 v4, 0x1

    :goto_1
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_5

    const/16 v19, 0x15

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 p1, 0x16

    :cond_5
    :goto_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-eqz v4, :cond_7

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v14

    :cond_6
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v10, v15, v0, v1}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_1b

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    :goto_3
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    :cond_9
    const/16 v19, 0x16

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 p1, 0x15

    goto :goto_2

    :sswitch_1
    iget v0, v3, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/Workspace;->setAllowLongPress(Z)V

    goto/16 :goto_0

    :sswitch_2
    if-eqz v4, :cond_b

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_a

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v14

    :cond_a
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v10, v15, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_b
    :goto_4
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_c
    if-lez v14, :cond_e

    add-int/lit8 v16, v14, -0x1

    :goto_5
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v19

    if-eqz v19, :cond_d

    sget v19, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    move/from16 v0, v19

    if-ne v14, v0, :cond_d

    move/from16 v16, v14

    :cond_d
    move/from16 v0, v16

    if-eq v0, v14, :cond_11

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v10, v15, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :cond_e
    sget-boolean v19, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v19, :cond_f

    add-int/lit8 v16, v13, -0x1

    goto :goto_5

    :cond_f
    move/from16 v16, v14

    goto :goto_5

    :cond_10
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Hotseat;->playSoundEffect(I)V

    goto :goto_4

    :cond_11
    invoke-virtual {v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v10, v15, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :sswitch_3
    if-eqz v4, :cond_13

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_12

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v14

    :cond_12
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v10, v15, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_13
    :goto_6
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v19, v13, -0x1

    move/from16 v0, v19

    if-ge v14, v0, :cond_15

    add-int/lit8 v12, v14, 0x1

    :goto_7
    if-eq v12, v14, :cond_1a

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v15

    const/16 v19, -0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v10, v15, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_17

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_6

    :cond_15
    sget-boolean v19, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v19, :cond_16

    const/4 v12, 0x0

    goto :goto_7

    :cond_16
    move v12, v14

    goto :goto_7

    :cond_17
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    if-eqz v7, :cond_13

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->is12KEYNaviKeyFocus(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_19

    iget-object v0, v7, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    iget-object v0, v7, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/launcher2/CellLayoutHotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    :cond_18
    :goto_8
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Hotseat;->playSoundEffect(I)V

    goto :goto_6

    :cond_19
    invoke-virtual {v7}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    goto :goto_8

    :cond_1a
    const/16 v19, -0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v10, v15, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_6

    :cond_1b
    if-eqz v7, :cond_1c

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v19

    if-nez v19, :cond_1c

    const/16 v19, 0x2

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    invoke-virtual {v7}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Hotseat;->playSoundEffect(I)V

    goto/16 :goto_3

    :cond_1c
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_7

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/IconMoveContainer;->requestFocus()Z

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/IconMoveContainer;->playSoundEffect(I)V

    goto/16 :goto_3

    :sswitch_4
    if-eqz v4, :cond_1e

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_1d

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v14

    :cond_1d
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v10, v15, v0, v1}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_1f

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1e
    :goto_9
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_1f
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->is12KEYNaviKeyFocus(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_20

    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_20
    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Hotseat;->playSoundEffect(I)V

    goto :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method static is12KEYNaviKeyFocus(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setup(Lcom/android/launcher2/HomeView;)V
    .locals 1

    sput-object p0, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    return-void
.end method
