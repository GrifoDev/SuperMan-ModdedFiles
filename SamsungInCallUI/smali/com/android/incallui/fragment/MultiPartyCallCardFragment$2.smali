.class Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->onContentViewChanged(Landroid/graphics/Point;)V
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

    iput-object p1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->access$000(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->access$100(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;I)V

    goto :goto_0
.end method
