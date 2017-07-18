.class Lcom/android/incallui/help/RejectCallsWithMessage$4;
.super Ljava/lang/Object;
.source "RejectCallsWithMessage.java"

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;


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

    iput-object p1, p0, Lcom/android/incallui/help/RejectCallsWithMessage$4;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 2

    const-string v0, "RejectCallsWithMessage"

    const-string v1, "onDrawerClosed"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$4;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$200(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$4;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$200(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020333

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
