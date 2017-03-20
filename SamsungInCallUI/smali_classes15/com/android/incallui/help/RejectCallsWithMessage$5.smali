.class Lcom/android/incallui/help/RejectCallsWithMessage$5;
.super Ljava/lang/Object;
.source "RejectCallsWithMessage.java"

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/RejectCallsWithMessage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/RejectCallsWithMessage;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/incallui/help/RejectCallsWithMessage$5;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnded()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "RejectCallsWithMessage"

    const-string v1, "onScrollEnded"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public onScrollStarted()V
    .locals 2

    .prologue
    .line 235
    const-string v0, "RejectCallsWithMessage"

    const-string v1, "onScrollStarted"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$5;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # invokes: Lcom/android/incallui/help/RejectCallsWithMessage;->hideDragUpAnimation()V
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$800(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    .line 237
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$5;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mrejectMsgTip:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$900(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 238
    return-void
.end method
