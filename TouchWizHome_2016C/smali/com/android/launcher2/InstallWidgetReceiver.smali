.class public Lcom/android/launcher2/InstallWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallWidgetReceiver.java"


# static fields
.field public static final ACTION_BIND_WIDGET:Ljava/lang/String; = "com.sec.android.launcher.action.BIND_WIDGET"

.field public static final ACTION_BIND_WIDGET_COMPLETE:Ljava/lang/String; = "com.sec.android.launcher.action.BIND_WIDGET_COMPLETE"

.field public static final ACTION_UNBIND_WIDGET:Ljava/lang/String; = "com.sec.android.launcher.action.UNBIND_WIDGET"

.field public static final EXTRA_APPWIDGET_CONFIGURATION_DATA:Ljava/lang/String; = "com.android.launcher.extra.widget.CONFIGURATION_DATA"

.field public static final EXTRA_APPWIDGET_CONFIGURATION_DATA_MIME_TYPE:Ljava/lang/String; = "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

.field public static final EXTRA_COMPONENT:Ljava/lang/String; = "componentName"

.field public static final EXTRA_SPANX:Ljava/lang/String; = "spanX"

.field public static final EXTRA_SPANY:Ljava/lang/String; = "spanY"

.field public static final EXTRA_WIDGET_NAME:Ljava/lang/String; = "widgetName"

.field public static final LAUNCHER_ACTION_INSTALL_WIDGET:Ljava/lang/String; = "com.sec.launcher.action.INSTALL_WIDGET"

.field public static final LAUNCHER_EXTRA_APPWIDGET_COMPONENT:Ljava/lang/String; = "com.sec.launcher.intent.extra.COMPONENT"

.field public static final LAUNCHER_EXTRA_APPWIDGET_DUPALLOWED:Ljava/lang/String; = "com.sec.launcher.intent.extra.DUPLICATE"

.field public static final LAUNCHER_EXTRA_APPWIDGET_SIZEX:Ljava/lang/String; = "com.sec.launcher.intent.extra.sizeX"

.field public static final LAUNCHER_EXTRA_APPWIDGET_SIZEY:Ljava/lang/String; = "com.sec.launcher.intent.extra.sizeY"

.field private static final TAG:Ljava/lang/String; = "Launcher.BindWidgetReceiver"

.field private static final mCoordinates:[I

.field private static mCountX:I

.field private static mCountY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher2/InstallWidgetReceiver;->mCoordinates:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private bindWidget(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 10

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    const-string v7, "componentName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v7, 0x2

    new-array v6, v7, [I

    const/4 v7, 0x0

    const-string v8, "spanX"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    aput v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "spanY"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    aput v8, v6, v7

    const/4 v7, 0x2

    new-array v3, v7, [I

    invoke-static {p1, v3}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v8, 0x0

    aget v8, v3, v8

    if-le v7, v8, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v3, v8

    aput v8, v6, v7

    :cond_2
    const/4 v7, 0x1

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v8, v3, v8

    if-le v7, v8, :cond_3

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v3, v8

    aput v8, v6, v7

    :cond_3
    sget-object v7, Lcom/android/launcher2/InstallWidgetReceiver;->mCoordinates:[I

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {p1, v7, p3, v8, v9}, Lcom/android/launcher2/LauncherModel;->findEmptyCell(Landroid/content/Context;[IIII)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_0

    iget-object v7, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v7, :cond_0

    new-instance v4, Lcom/android/launcher2/HomeWidgetItem;

    const/4 v7, -0x1

    invoke-direct {v4, v2, v7}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {v4, p3}, Lcom/android/launcher2/HomeWidgetItem;->setPosition(I)V

    sget-object v7, Lcom/android/launcher2/InstallWidgetReceiver;->mCoordinates:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iput v7, v4, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    sget-object v7, Lcom/android/launcher2/InstallWidgetReceiver;->mCoordinates:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iput v7, v4, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    const/4 v7, 0x0

    aget v7, v6, v7

    iput v7, v4, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    const/4 v7, 0x1

    aget v7, v6, v7

    iput v7, v4, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    const-wide/16 v8, -0x64

    iput-wide v8, v4, Lcom/android/launcher2/HomeWidgetItem;->container:J

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v7

    iput-object v7, v4, Lcom/android/launcher2/HomeWidgetItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v7, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7, v4}, Lcom/android/launcher2/HomeView;->addWidgetFromIntent(Lcom/android/launcher2/HomeWidgetItem;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bindWidget(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v18

    if-eqz v18, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v18, "componentName"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v15, v0, [I

    const/16 v18, 0x0

    const-string v19, "spanX"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    aput v19, v15, v18

    const/16 v18, 0x1

    const-string v19, "spanY"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    aput v19, v15, v18

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const/16 v18, 0x0

    aget v18, v15, v18

    if-lez v18, :cond_2

    const/16 v18, 0x1

    aget v18, v15, v18

    if-gtz v18, :cond_6

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_3
    const-string v18, "Launcher.BindWidgetReceiver"

    const-string v19, "ComponentName is null or empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v18, 0x0

    aget v18, v15, v18

    if-lez v18, :cond_5

    const/16 v18, 0x1

    aget v18, v15, v18

    if-gtz v18, :cond_0

    :cond_5
    const-string v18, "Launcher.BindWidgetReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Span ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v10

    :cond_7
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v18

    if-eqz v18, :cond_d

    const/4 v13, 0x1

    :goto_1
    const/4 v7, 0x0

    const/16 v17, 0x0

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v17

    :cond_8
    if-eqz v7, :cond_a

    if-eqz v17, :cond_a

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v13

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v18

    if-eqz v18, :cond_9

    if-nez v13, :cond_9

    const/4 v13, 0x1

    :cond_9
    sget-boolean v18, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v18, :cond_a

    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v18, :cond_a

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/4 v13, 0x0

    :cond_a
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v4, v0, [I

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    const/16 v18, 0x0

    aget v18, v4, v18

    sput v18, Lcom/android/launcher2/InstallWidgetReceiver;->mCountX:I

    const/16 v18, 0x1

    aget v18, v4, v18

    sput v18, Lcom/android/launcher2/InstallWidgetReceiver;->mCountY:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/android/launcher2/InstallWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v9

    if-nez v9, :cond_10

    if-eqz v7, :cond_10

    if-eqz v17, :cond_10

    const/16 v16, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v14

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v18

    if-eqz v18, :cond_b

    add-int/lit8 v16, v16, 0x1

    :cond_b
    move/from16 v8, v16

    :goto_2
    if-ge v8, v14, :cond_e

    if-nez v9, :cond_e

    if-eq v8, v13, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v8}, Lcom/android/launcher2/InstallWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v9

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_e
    if-nez v9, :cond_10

    if-eqz v7, :cond_10

    if-eqz v17, :cond_10

    sget-boolean v18, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v18, :cond_11

    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v18, :cond_11

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v18

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v19

    sub-int v12, v18, v19

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/launcher2/InstallWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v9

    if-eqz v9, :cond_f

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    :cond_f
    :goto_3
    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/QuickViewWorkspace;->updateAddScreen()V

    :cond_10
    if-nez v9, :cond_14

    const v18, 0x7f09000a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_13

    invoke-virtual {v10}, Lcom/android/launcher2/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v18

    sget-object v19, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_12

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->addPage()V

    :cond_12
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v18

    add-int/lit8 v12, v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/launcher2/InstallWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v9

    goto :goto_3

    :cond_13
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_14
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/QuickViewWorkspace;->updateTitleBar()V

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "com.sec.android.launcher.action.BIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.launcher.action.UNBIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.sec.android.launcher.action.BIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/InstallWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.sec.android.launcher.action.UNBIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/InstallWidgetReceiver;->unBindWidget(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public unBindWidget(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27

    const-string v3, "appWidgetId"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "screen"

    aput-object v6, v4, v5

    const-string v5, "appWidgetId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_7

    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    const-string v3, "screen"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v23, v0

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v23, v3

    const/4 v3, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v23, v3

    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v14, 0x0

    :cond_1
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v22, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/LauncherApplication;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v22

    :cond_2
    const/16 v17, 0x0

    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v17

    :cond_3
    const/16 v18, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_7

    move/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [I

    const-wide/16 v4, -0x64

    const/4 v3, 0x1

    aget v3, v21, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-nez v15, :cond_5

    const/4 v3, 0x0

    aget v3, v21, v3

    int-to-long v4, v3

    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v11

    if-eqz v11, :cond_4

    new-instance v3, Lcom/android/launcher2/InstallWidgetReceiver$1;

    const-string v4, "Unbind widget from BindWidgetReceiver"

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v11, v12}, Lcom/android/launcher2/InstallWidgetReceiver$1;-><init>(Lcom/android/launcher2/InstallWidgetReceiver;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;I)V

    invoke-virtual {v3}, Lcom/android/launcher2/InstallWidgetReceiver$1;->start()V

    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v15}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->allItems()Ljava/util/List;

    move-result-object v8

    const/16 v20, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    move/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/BaseItem;

    instance-of v3, v13, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v3, :cond_6

    iget-wide v4, v13, Lcom/android/launcher2/BaseItem;->mId:J

    const/4 v3, 0x0

    aget v3, v21, v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    invoke-virtual {v15, v13}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-object v3, v13

    check-cast v3, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    move-object/from16 v16, v13

    check-cast v16, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v11

    if-eqz v11, :cond_6

    new-instance v3, Lcom/android/launcher2/InstallWidgetReceiver$2;

    const-string v4, "Unbind widget from BindWidgetReceiver"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v4, v11, v1}, Lcom/android/launcher2/InstallWidgetReceiver$2;-><init>(Lcom/android/launcher2/InstallWidgetReceiver;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v3}, Lcom/android/launcher2/InstallWidgetReceiver$2;->start()V

    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
