.class Lcom/android/incallui/help/IncomingCallWhileUsingApp$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/IncomingCallWhileUsingApp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$4;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$4;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$4;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$4;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$200(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
