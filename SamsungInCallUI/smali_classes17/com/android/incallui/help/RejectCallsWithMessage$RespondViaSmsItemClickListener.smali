.class Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;
.super Ljava/lang/Object;
.source "RejectCallsWithMessage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/help/RejectCallsWithMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RespondViaSmsItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/RejectCallsWithMessage;


# direct methods
.method private constructor <init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/help/RejectCallsWithMessage;Lcom/android/incallui/help/RejectCallsWithMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "help - RespondViaSmsItemClickListener.onItemClick("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # invokes: Lcom/android/incallui/help/RejectCallsWithMessage;->clickRejectCallsWithMessage()V
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1400(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # invokes: Lcom/android/incallui/help/RejectCallsWithMessage;->showToast()V
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$000(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    goto :goto_0
.end method
