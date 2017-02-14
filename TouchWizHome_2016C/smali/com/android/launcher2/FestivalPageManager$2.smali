.class Lcom/android/launcher2/FestivalPageManager$2;
.super Ljava/lang/Object;
.source "FestivalPageManager.java"

# interfaces
.implements Lcom/android/launcher2/AppWidgetBinder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FestivalPageManager;->bindFestivalWidget(Lcom/android/launcher2/AppWidgetBinder;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FestivalPageManager;

.field final synthetic val$festivalName:Ljava/lang/String;

.field final synthetic val$pageIndex:I

.field final synthetic val$widgetType:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/FestivalPageManager;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FestivalPageManager$2;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iput p2, p0, Lcom/android/launcher2/FestivalPageManager$2;->val$pageIndex:I

    iput-object p3, p0, Lcom/android/launcher2/FestivalPageManager$2;->val$festivalName:Ljava/lang/String;

    iput p4, p0, Lcom/android/launcher2/FestivalPageManager$2;->val$widgetType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindFail()V
    .locals 2

    const-string v0, "FestivalPageManager"

    const-string v1, "Problem binding widget. This should only happen when installed outside of /system/app and user declined authorization."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBindSuccess(I)V
    .locals 11

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$2;->this$0:Lcom/android/launcher2/FestivalPageManager;

    # getter for: Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v2}, Lcom/android/launcher2/FestivalPageManager;->access$000(Lcom/android/launcher2/FestivalPageManager;)Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    const/4 v2, -0x1

    if-eq v2, p1, :cond_0

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct {v1, v8, p1, v7}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;IZ)V

    const-wide/16 v2, -0x64

    iput-wide v2, v1, Lcom/android/launcher2/HomeWidgetItem;->container:J

    iget v2, p0, Lcom/android/launcher2/FestivalPageManager$2;->val$pageIndex:I

    iput v2, v1, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v2, v3, :cond_2

    iput v4, v1, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    iput v5, v1, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    :goto_1
    iput v7, v1, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    iput v7, v1, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/HomeWidgetItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$2;->val$festivalName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/launcher2/FestivalPageManager;->getFestivalType(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    iget-wide v2, v1, Lcom/android/launcher2/HomeWidgetItem;->container:J

    iget v4, v1, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    iget v5, v1, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$2;->this$0:Lcom/android/launcher2/FestivalPageManager;

    # getter for: Lcom/android/launcher2/FestivalPageManager;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v2}, Lcom/android/launcher2/FestivalPageManager;->access$100(Lcom/android/launcher2/FestivalPageManager;)Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v8}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, p1, v8}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v2, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v2

    iget-object v3, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v10

    iget-object v2, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v3, v10, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    iget v4, v10, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    iget v5, v10, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    iget v6, v10, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    iget-object v2, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHostView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$2;->this$0:Lcom/android/launcher2/FestivalPageManager;

    # getter for: Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v2}, Lcom/android/launcher2/FestivalPageManager;->access$000(Lcom/android/launcher2/FestivalPageManager;)Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$2;->this$0:Lcom/android/launcher2/FestivalPageManager;

    # getter for: Lcom/android/launcher2/FestivalPageManager;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v2}, Lcom/android/launcher2/FestivalPageManager;->access$100(Lcom/android/launcher2/FestivalPageManager;)Lcom/android/launcher2/HomeView;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v3, v8}, Lcom/android/launcher2/HomeView;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$2;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iget v3, p0, Lcom/android/launcher2/FestivalPageManager$2;->val$widgetType:I

    iget-object v4, p0, Lcom/android/launcher2/FestivalPageManager$2;->val$festivalName:Ljava/lang/String;

    # invokes: Lcom/android/launcher2/FestivalPageManager;->sendFestivalWidgetType(IILjava/lang/String;)V
    invoke-static {v2, v3, p1, v4}, Lcom/android/launcher2/FestivalPageManager;->access$200(Lcom/android/launcher2/FestivalPageManager;IILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    # invokes: Lcom/android/launcher2/FestivalPageManager;->setFestivalString(Lcom/android/launcher2/LauncherApplication;)V
    invoke-static {v2}, Lcom/android/launcher2/FestivalPageManager;->access$300(Lcom/android/launcher2/LauncherApplication;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v2, v3, :cond_3

    iput v5, v1, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    iput v5, v1, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    goto/16 :goto_1

    :cond_3
    iput v4, v1, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    iput v4, v1, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    goto/16 :goto_1
.end method
