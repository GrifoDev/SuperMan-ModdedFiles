.class Lcom/android/incallui/help/IncomingCallWhileUsingApp$2;
.super Ljava/lang/Object;
.source "IncomingCallWhileUsingApp.java"

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
    .param p1, "this$0"    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$2;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10037c

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100174

    if-eq v0, v1, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100175

    if-eq v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$2;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # invokes: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$200(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    .line 242
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
