.class Lcom/android/incallui/accessory/CoverScreen$2;
.super Ljava/lang/Object;
.source "CoverScreen.java"

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;


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
    .line 403
    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$2;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 405
    const-string v0, "onDrawerOpened"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 406
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$2;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # invokes: Lcom/android/incallui/accessory/CoverScreen;->updateRejectHandleDrawer(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->access$300(Lcom/android/incallui/accessory/CoverScreen;Z)V

    .line 407
    return-void
.end method
