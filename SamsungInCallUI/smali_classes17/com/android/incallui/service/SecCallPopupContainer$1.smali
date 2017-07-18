.class Lcom/android/incallui/service/SecCallPopupContainer$1;
.super Ljava/lang/Object;
.source "SecCallPopupContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupContainer;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$1;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$1;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$1;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->animateForShow()V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$1;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/incallui/service/SecCallPopupContainer;->access$100(Lcom/android/incallui/service/SecCallPopupContainer;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
