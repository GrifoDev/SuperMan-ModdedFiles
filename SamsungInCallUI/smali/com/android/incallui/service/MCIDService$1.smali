.class Lcom/android/incallui/service/MCIDService$1;
.super Lcom/android/phone/IMCIDService$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/MCIDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/MCIDService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/MCIDService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/MCIDService$1;->this$0:Lcom/android/incallui/service/MCIDService;

    invoke-direct {p0}, Lcom/android/phone/IMCIDService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePhotoringState(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/MCIDService$1;->this$0:Lcom/android/incallui/service/MCIDService;

    invoke-static {v0}, Lcom/android/incallui/service/MCIDService;->access$000(Lcom/android/incallui/service/MCIDService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/MCIDService$1;->this$0:Lcom/android/incallui/service/MCIDService;

    invoke-static {v1}, Lcom/android/incallui/service/MCIDService;->access$000(Lcom/android/incallui/service/MCIDService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
