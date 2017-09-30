.class Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;


# direct methods
.method constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v0, "onGlobalLayout..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$400(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$500(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z

    goto :goto_0
.end method
