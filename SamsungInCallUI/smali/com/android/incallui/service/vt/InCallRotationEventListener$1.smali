.class Lcom/android/incallui/service/vt/InCallRotationEventListener$1;
.super Landroid/view/OrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/vt/InCallRotationEventListener;->enableOrientationEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/vt/InCallRotationEventListener;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/vt/InCallRotationEventListener;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener$1;->this$0:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener$1;->this$0:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-static {v0, p1}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->access$000(Lcom/android/incallui/service/vt/InCallRotationEventListener;I)V

    return-void
.end method
