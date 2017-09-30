.class Lcom/android/incallui/service/SecCallPopupService$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupService;->onCreateCustomView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupService$5;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$5;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupService;->access$300(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$5;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/service/SecCallPopupService;->access$602(Lcom/android/incallui/service/SecCallPopupService;Z)Z

    return-void
.end method
