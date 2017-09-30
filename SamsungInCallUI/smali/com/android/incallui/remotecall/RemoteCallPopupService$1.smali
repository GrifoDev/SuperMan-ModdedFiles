.class Lcom/android/incallui/remotecall/RemoteCallPopupService$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    iput-object p1, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->access$000(Lcom/android/incallui/remotecall/RemoteCallPopupService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPopupService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->access$100(Lcom/android/incallui/remotecall/RemoteCallPopupService;Landroid/graphics/drawable/Drawable;Z)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->access$200(Lcom/android/incallui/remotecall/RemoteCallPopupService;)V

    return-void
.end method
