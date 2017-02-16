.class Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;
.super Ljava/lang/Object;
.source "MultiPartyCallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->onMobileKeyboardChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    .prologue
    .line 2337
    iput-object p1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 2340
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2345
    :cond_0
    :goto_0
    return-void

    .line 2341
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2342
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2343
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2344
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    # invokes: Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateContainerLayout()V
    invoke-static {v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->access$100(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    goto :goto_0
.end method
