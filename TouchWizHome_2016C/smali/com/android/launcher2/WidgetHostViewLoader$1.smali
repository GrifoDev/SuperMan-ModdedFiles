.class Lcom/android/launcher2/WidgetHostViewLoader$1;
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


# direct methods
.method constructor <init>(Lcom/android/launcher2/WidgetHostViewLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    invoke-static {v0}, Lcom/android/launcher2/WidgetHostViewLoader;->access$400(Lcom/android/launcher2/WidgetHostViewLoader;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getAppWidgetBinder()Lcom/android/launcher2/AppWidgetBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    invoke-static {v1}, Lcom/android/launcher2/WidgetHostViewLoader;->access$000(Lcom/android/launcher2/WidgetHostViewLoader;)Lcom/android/launcher2/HomePendingWidget;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/HomePendingWidget;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v2, p0, Lcom/android/launcher2/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    invoke-static {v2}, Lcom/android/launcher2/WidgetHostViewLoader;->access$000(Lcom/android/launcher2/WidgetHostViewLoader;)Lcom/android/launcher2/HomePendingWidget;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/HomePendingWidget;->componentName:Landroid/content/ComponentName;

    new-instance v3, Lcom/android/launcher2/WidgetHostViewLoader$1$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/WidgetHostViewLoader$1$1;-><init>(Lcom/android/launcher2/WidgetHostViewLoader$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/AppWidgetBinder;->allocateBindNew(Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V

    return-void
.end method
