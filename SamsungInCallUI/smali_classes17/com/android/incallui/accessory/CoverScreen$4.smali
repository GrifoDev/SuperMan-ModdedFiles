.class Lcom/android/incallui/accessory/CoverScreen$4;
.super Ljava/lang/Object;
.source "CoverScreen.java"

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForAnswer(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/accessory/CoverScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$4;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimateClose()V
    .locals 2

    .prologue
    .line 423
    const-string v0, "onAnimateClose"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 424
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$4;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # invokes: Lcom/android/incallui/accessory/CoverScreen;->animateHideForMaskPanel()V
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$400(Lcom/android/incallui/accessory/CoverScreen;)V

    .line 425
    return-void
.end method

.method public onAnimateOpen()V
    .locals 2

    .prologue
    .line 418
    const-string v0, "onAnimateOpen"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 419
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$4;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # invokes: Lcom/android/incallui/accessory/CoverScreen;->animateShowForMaskPanel()V
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$500(Lcom/android/incallui/accessory/CoverScreen;)V

    .line 420
    return-void
.end method
