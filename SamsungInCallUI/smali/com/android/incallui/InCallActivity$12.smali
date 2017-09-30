.class Lcom/android/incallui/InCallActivity$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1300(Lcom/android/incallui/InCallActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "onGlobalLayout : ContentView is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1300(Lcom/android/incallui/InCallActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1400(Lcom/android/incallui/InCallActivity;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$1300(Lcom/android/incallui/InCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1400(Lcom/android/incallui/InCallActivity;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$1300(Lcom/android/incallui/InCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1400(Lcom/android/incallui/InCallActivity;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$1300(Lcom/android/incallui/InCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1400(Lcom/android/incallui/InCallActivity;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$1300(Lcom/android/incallui/InCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGlobalLayout : mContentViewSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$1400(Lcom/android/incallui/InCallActivity;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onContentViewChanged(Landroid/graphics/Point;)V

    goto/16 :goto_0
.end method
