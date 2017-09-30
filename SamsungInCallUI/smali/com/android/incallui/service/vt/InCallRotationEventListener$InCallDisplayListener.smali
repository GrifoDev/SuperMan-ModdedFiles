.class Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/InCallRotationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InCallDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/vt/InCallRotationEventListener;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/vt/InCallRotationEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;->this$0:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;->this$0:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    iget-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;->this$0:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-static {v1}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->access$100(Lcom/android/incallui/service/vt/InCallRotationEventListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->notifyRotationChanged(I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
