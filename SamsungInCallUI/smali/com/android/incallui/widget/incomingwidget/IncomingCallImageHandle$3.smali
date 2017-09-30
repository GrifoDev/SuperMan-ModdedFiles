.class Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;


# direct methods
.method constructor <init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$3;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$3;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1200(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$3;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->processForOnTriggered()V

    :cond_0
    return-void
.end method
