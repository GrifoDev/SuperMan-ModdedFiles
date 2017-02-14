.class Lcom/android/launcher2/WidgetHostViewLoader$1$1;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"

# interfaces
.implements Lcom/android/launcher2/AppWidgetBinder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/WidgetHostViewLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/WidgetHostViewLoader$1;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WidgetHostViewLoader$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/WidgetHostViewLoader$1$1;->this$1:Lcom/android/launcher2/WidgetHostViewLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindFail()V
    .locals 0

    return-void
.end method

.method public onBindSuccess(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/WidgetHostViewLoader$1$1;->this$1:Lcom/android/launcher2/WidgetHostViewLoader$1;

    iget-object v0, v0, Lcom/android/launcher2/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    # setter for: Lcom/android/launcher2/WidgetHostViewLoader;->mWidgetLoadingId:I
    invoke-static {v0, p1}, Lcom/android/launcher2/WidgetHostViewLoader;->access$102(Lcom/android/launcher2/WidgetHostViewLoader;I)I

    iget-object v0, p0, Lcom/android/launcher2/WidgetHostViewLoader$1$1;->this$1:Lcom/android/launcher2/WidgetHostViewLoader$1;

    iget-object v0, v0, Lcom/android/launcher2/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    # getter for: Lcom/android/launcher2/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/WidgetHostViewLoader;->access$300(Lcom/android/launcher2/WidgetHostViewLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/WidgetHostViewLoader$1$1;->this$1:Lcom/android/launcher2/WidgetHostViewLoader$1;

    iget-object v1, v1, Lcom/android/launcher2/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher2/WidgetHostViewLoader;

    # getter for: Lcom/android/launcher2/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher2/WidgetHostViewLoader;->access$200(Lcom/android/launcher2/WidgetHostViewLoader;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
