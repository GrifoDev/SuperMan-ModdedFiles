.class Lcom/android/incallui/RejectMsgContentPopup$1;
.super Ljava/lang/Object;
.source "RejectMsgContentPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/RejectMsgContentPopup;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/RejectMsgContentPopup;


# direct methods
.method constructor <init>(Lcom/android/incallui/RejectMsgContentPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/RejectMsgContentPopup;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/incallui/RejectMsgContentPopup$1;->this$0:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup$1;->this$0:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContentPopup;->getOnItemClickListener()Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup$1;->this$0:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContentPopup;->getOnItemClickListener()Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method
