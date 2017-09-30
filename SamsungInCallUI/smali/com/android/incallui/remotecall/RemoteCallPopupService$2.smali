.class Lcom/android/incallui/remotecall/RemoteCallPopupService$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/remotecall/RemoteCallPopupService;->onCreateCustomView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/remotecall/RemoteCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/remotecall/RemoteCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService$2;->this$0:Lcom/android/incallui/remotecall/RemoteCallPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "RemoteCallPopupService"

    const-string v1, "onClick pulling button"

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->requestPulling()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService$2;->this$0:Lcom/android/incallui/remotecall/RemoteCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->stopSelf()V

    :cond_0
    return-void
.end method
