.class Lcom/android/launcher2/HomeView$8;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$8;->this$0:Lcom/android/launcher2/HomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, -0x1

    const-string v0, "ceh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endCallBack mPendingWidgetId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView$8;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v2}, Lcom/android/launcher2/HomeView;->access$600(Lcom/android/launcher2/HomeView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$8;->this$0:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/HomeView;->access$702(Lcom/android/launcher2/HomeView;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/HomeView$8;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$600(Lcom/android/launcher2/HomeView;)I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$8;->this$0:Lcom/android/launcher2/HomeView;

    iget-object v1, p0, Lcom/android/launcher2/HomeView$8;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$600(Lcom/android/launcher2/HomeView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView$8;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v2}, Lcom/android/launcher2/HomeView;->access$800(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/PendingAddInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/HomeView;->access$900(Lcom/android/launcher2/HomeView;ILcom/android/launcher2/HomeItem;Landroid/appwidget/AppWidgetHostView;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$8;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1000(Lcom/android/launcher2/HomeView;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$8;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0, v4}, Lcom/android/launcher2/HomeView;->access$602(Lcom/android/launcher2/HomeView;I)I

    :cond_0
    return-void
.end method
