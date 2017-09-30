.class Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;


# direct methods
.method constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;->this$1:Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;->this$1:Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;

    iget-object v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;->this$1:Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;

    iget-object v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;->this$1:Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;

    iget-object v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
