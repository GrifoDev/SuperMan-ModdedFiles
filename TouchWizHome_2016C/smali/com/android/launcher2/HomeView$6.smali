.class Lcom/android/launcher2/HomeView$6;
.super Ljava/lang/Thread;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->completeAddAppWidget(ILcom/android/launcher2/HomeItem;Landroid/appwidget/AppWidgetHostView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$6;->this$0:Lcom/android/launcher2/HomeView;

    iput p3, p0, Lcom/android/launcher2/HomeView$6;->val$appWidgetId:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView$6;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$400(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$6;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$400(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeView$6;->val$appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    :cond_0
    return-void
.end method
