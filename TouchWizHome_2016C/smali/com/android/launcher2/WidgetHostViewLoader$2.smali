.class Lcom/android/launcher2/WidgetHostViewLoader$2;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/WidgetHostViewLoader;->preloadWidget()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/WidgetHostViewLoader;

.field final synthetic val$appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field final synthetic val$pInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WidgetHostViewLoader;Lcom/android/launcher2/LauncherAppWidgetHost;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    iput-object p2, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->val$appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iput-object p3, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->val$pInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, -0x1

    iget-object v3, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    # getter for: Lcom/android/launcher2/WidgetHostViewLoader;->mWidgetLoadingId:I
    invoke-static {v3}, Lcom/android/launcher2/WidgetHostViewLoader;->access$100(Lcom/android/launcher2/WidgetHostViewLoader;)I

    move-result v3

    if-ne v3, v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->val$appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iget-object v4, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    # getter for: Lcom/android/launcher2/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v4}, Lcom/android/launcher2/WidgetHostViewLoader;->access$400(Lcom/android/launcher2/WidgetHostViewLoader;)Lcom/android/launcher2/Launcher;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    # getter for: Lcom/android/launcher2/WidgetHostViewLoader;->mWidgetLoadingId:I
    invoke-static {v5}, Lcom/android/launcher2/WidgetHostViewLoader;->access$100(Lcom/android/launcher2/WidgetHostViewLoader;)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->val$pInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    # getter for: Lcom/android/launcher2/WidgetHostViewLoader;->mItem:Lcom/android/launcher2/HomePendingWidget;
    invoke-static {v3}, Lcom/android/launcher2/WidgetHostViewLoader;->access$000(Lcom/android/launcher2/WidgetHostViewLoader;)Lcom/android/launcher2/HomePendingWidget;

    move-result-object v3

    iput-object v0, v3, Lcom/android/launcher2/HomePendingWidget;->mBoundWidget:Landroid/appwidget/AppWidgetHostView;

    iget-object v3, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    # setter for: Lcom/android/launcher2/WidgetHostViewLoader;->mWidgetLoadingId:I
    invoke-static {v3, v7}, Lcom/android/launcher2/WidgetHostViewLoader;->access$102(Lcom/android/launcher2/WidgetHostViewLoader;I)I

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    sget-object v2, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v3, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    # getter for: Lcom/android/launcher2/WidgetHostViewLoader;->mItem:Lcom/android/launcher2/HomePendingWidget;
    invoke-static {v3}, Lcom/android/launcher2/WidgetHostViewLoader;->access$000(Lcom/android/launcher2/WidgetHostViewLoader;)Lcom/android/launcher2/HomePendingWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/HomePendingWidget;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v1

    iget v3, v1, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    iget v4, v1, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    iget v5, v1, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    iget v6, v1, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    # getter for: Lcom/android/launcher2/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v3}, Lcom/android/launcher2/WidgetHostViewLoader;->access$400(Lcom/android/launcher2/WidgetHostViewLoader;)Lcom/android/launcher2/Launcher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    # getter for: Lcom/android/launcher2/WidgetHostViewLoader;->mItem:Lcom/android/launcher2/HomePendingWidget;
    invoke-static {v4}, Lcom/android/launcher2/WidgetHostViewLoader;->access$000(Lcom/android/launcher2/WidgetHostViewLoader;)Lcom/android/launcher2/HomePendingWidget;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher2/HomePendingWidget;->spanX:I

    iget-object v5, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    # getter for: Lcom/android/launcher2/WidgetHostViewLoader;->mItem:Lcom/android/launcher2/HomePendingWidget;
    invoke-static {v5}, Lcom/android/launcher2/WidgetHostViewLoader;->access$000(Lcom/android/launcher2/WidgetHostViewLoader;)Lcom/android/launcher2/HomePendingWidget;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher2/HomePendingWidget;->spanY:I

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    iget-object v3, p0, Lcom/android/launcher2/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    # getter for: Lcom/android/launcher2/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v3}, Lcom/android/launcher2/WidgetHostViewLoader;->access$400(Lcom/android/launcher2/WidgetHostViewLoader;)Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
