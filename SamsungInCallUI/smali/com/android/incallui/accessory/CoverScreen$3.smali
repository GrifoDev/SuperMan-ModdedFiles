.class Lcom/android/incallui/accessory/CoverScreen$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;


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

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$3;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 2

    const-string v0, "onDrawerClosed"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$3;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$400(Lcom/android/incallui/accessory/CoverScreen;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$3;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->access$300(Lcom/android/incallui/accessory/CoverScreen;Z)V

    return-void
.end method
