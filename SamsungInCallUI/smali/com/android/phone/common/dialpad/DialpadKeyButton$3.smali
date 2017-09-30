.class Lcom/android/phone/common/dialpad/DialpadKeyButton$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/common/dialpad/DialpadKeyButton;->onHoverEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;


# direct methods
.method constructor <init>(Lcom/android/phone/common/dialpad/DialpadKeyButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton$3;->this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton$3;->this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->access$200(Lcom/android/phone/common/dialpad/DialpadKeyButton;Z)V

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton$3;->this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton$3;->this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-static {v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->access$300(Lcom/android/phone/common/dialpad/DialpadKeyButton;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
