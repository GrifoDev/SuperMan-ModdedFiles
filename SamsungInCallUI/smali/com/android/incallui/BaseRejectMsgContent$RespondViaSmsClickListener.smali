.class public Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/BaseRejectMsgContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/BaseRejectMsgContent;


# direct methods
.method public constructor <init>(Lcom/android/incallui/BaseRejectMsgContent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "RespondViaSmsClickListener.onClick()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f10022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- message: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    iget-object v1, v1, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    iget-object v1, v1, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    invoke-interface {v1, v0}, Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
