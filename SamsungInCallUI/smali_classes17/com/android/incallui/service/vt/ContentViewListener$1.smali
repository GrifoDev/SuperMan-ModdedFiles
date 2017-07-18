.class Lcom/android/incallui/service/vt/ContentViewListener$1;
.super Ljava/lang/Object;
.source "ContentViewListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/ContentViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/vt/ContentViewListener;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/vt/ContentViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5}, Lcom/android/incallui/service/vt/ContentViewListener;->access$000(Lcom/android/incallui/service/vt/ContentViewListener;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5}, Lcom/android/incallui/service/vt/ContentViewListener;->access$000(Lcom/android/incallui/service/vt/ContentViewListener;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5}, Lcom/android/incallui/service/vt/ContentViewListener;->access$000(Lcom/android/incallui/service/vt/ContentViewListener;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5}, Lcom/android/incallui/service/vt/ContentViewListener;->access$000(Lcom/android/incallui/service/vt/ContentViewListener;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5}, Lcom/android/incallui/service/vt/ContentViewListener;->access$100(Lcom/android/incallui/service/vt/ContentViewListener;)I

    move-result v5

    if-ne v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5}, Lcom/android/incallui/service/vt/ContentViewListener;->access$200(Lcom/android/incallui/service/vt/ContentViewListener;)I

    move-result v5

    if-eq v0, v5, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5, v3}, Lcom/android/incallui/service/vt/ContentViewListener;->access$102(Lcom/android/incallui/service/vt/ContentViewListener;I)I

    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5, v0}, Lcom/android/incallui/service/vt/ContentViewListener;->access$202(Lcom/android/incallui/service/vt/ContentViewListener;I)I

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5, v4}, Lcom/android/incallui/service/vt/ContentViewListener;->access$302(Lcom/android/incallui/service/vt/ContentViewListener;Z)Z

    :goto_2
    iget-object v4, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v4}, Lcom/android/incallui/service/vt/ContentViewListener;->access$300(Lcom/android/incallui/service/vt/ContentViewListener;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5}, Lcom/android/incallui/service/vt/ContentViewListener;->access$100(Lcom/android/incallui/service/vt/ContentViewListener;)I

    move-result v5

    iget-object v6, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v6}, Lcom/android/incallui/service/vt/ContentViewListener;->access$200(Lcom/android/incallui/service/vt/ContentViewListener;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/service/vt/ContentViewListener;->onContentsViewChanged(II)V

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5}, Lcom/android/incallui/service/vt/ContentViewListener;->access$408(Lcom/android/incallui/service/vt/ContentViewListener;)I

    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5}, Lcom/android/incallui/service/vt/ContentViewListener;->access$400(Lcom/android/incallui/service/vt/ContentViewListener;)I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_5

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5, v4}, Lcom/android/incallui/service/vt/ContentViewListener;->access$302(Lcom/android/incallui/service/vt/ContentViewListener;Z)Z

    const-string v4, "ContentViewListener - onGlobalLayout : force remove listener"

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentViewListener - onGlobalLayout, keep going on : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/service/vt/ContentViewListener$1;->this$0:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-static {v5}, Lcom/android/incallui/service/vt/ContentViewListener;->access$400(Lcom/android/incallui/service/vt/ContentViewListener;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    goto :goto_2
.end method
