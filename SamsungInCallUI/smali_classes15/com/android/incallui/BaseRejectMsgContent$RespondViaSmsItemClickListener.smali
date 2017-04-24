.class public Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;
.super Ljava/lang/Object;
.source "BaseRejectMsgContent.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/BaseRejectMsgContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/BaseRejectMsgContent;


# direct methods
.method public constructor <init>(Lcom/android/incallui/BaseRejectMsgContent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RespondViaSmsItemClickListener.onItemClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1001b0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    iget-object v2, v2, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    invoke-interface {v2, v4}, Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- message: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    iget-object v2, v2, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    iget-object v2, v2, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    invoke-interface {v2, v0}, Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    const-string v3, "Block number"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "Report number"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_0
    iget-object v2, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    invoke-virtual {v2}, Lcom/android/incallui/BaseRejectMsgContent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/PackageHelpers;->spamBlockClicked(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    iget-object v2, v2, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    invoke-interface {v2, v4}, Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    invoke-virtual {v2}, Lcom/android/incallui/BaseRejectMsgContent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/PackageHelpers;->spamReportClicked(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    iget-object v2, v2, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    invoke-interface {v2, v4}, Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x272af5a4 -> :sswitch_0
        -0x969646b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
