.class Lcom/android/incallui/RejectMsgContent$1;
.super Ljava/lang/Object;
.source "RejectMsgContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/RejectMsgContent;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/RejectMsgContent;


# direct methods
.method constructor <init>(Lcom/android/incallui/RejectMsgContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/RejectMsgContent;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/incallui/RejectMsgContent$1;->this$0:Lcom/android/incallui/RejectMsgContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContent$1;->this$0:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->getOnItemClickListener()Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContent$1;->this$0:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->getOnItemClickListener()Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method
