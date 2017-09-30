.class Lcom/android/incallui/InCallContentViewListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallContentViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallContentViewListener;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallContentViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    invoke-static {v0}, Lcom/android/incallui/InCallContentViewListener;->access$000(Lcom/android/incallui/InCallContentViewListener;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    invoke-static {v0}, Lcom/android/incallui/InCallContentViewListener;->access$000(Lcom/android/incallui/InCallContentViewListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    iget-object v1, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    invoke-static {v1}, Lcom/android/incallui/InCallContentViewListener;->access$000(Lcom/android/incallui/InCallContentViewListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    invoke-static {v2}, Lcom/android/incallui/InCallContentViewListener;->access$000(Lcom/android/incallui/InCallContentViewListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/incallui/InCallContentViewListener;->access$100(Lcom/android/incallui/InCallContentViewListener;II)V

    goto :goto_0
.end method
