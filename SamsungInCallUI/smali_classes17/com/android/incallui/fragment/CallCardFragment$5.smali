.class Lcom/android/incallui/fragment/CallCardFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/CallCardFragment;->animateForBlinkCallTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/incallui/fragment/CallCardFragment$5;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$5;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    # --operator for: Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I
    invoke-static {v0}, Lcom/android/incallui/fragment/CallCardFragment;->access$106(Lcom/android/incallui/fragment/CallCardFragment;)I

    .line 1451
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$5;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    # getter for: Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I
    invoke-static {v0}, Lcom/android/incallui/fragment/CallCardFragment;->access$100(Lcom/android/incallui/fragment/CallCardFragment;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$5;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    # invokes: Lcom/android/incallui/fragment/CallCardFragment;->animateForBlinkCallTime()V
    invoke-static {v0}, Lcom/android/incallui/fragment/CallCardFragment;->access$200(Lcom/android/incallui/fragment/CallCardFragment;)V

    .line 1458
    :goto_0
    return-void

    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$5;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    # getter for: Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I
    invoke-static {v0}, Lcom/android/incallui/fragment/CallCardFragment;->access$100(Lcom/android/incallui/fragment/CallCardFragment;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1454
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$5;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    # invokes: Lcom/android/incallui/fragment/CallCardFragment;->stopCallEndTimeBlink()V
    invoke-static {v0}, Lcom/android/incallui/fragment/CallCardFragment;->access$300(Lcom/android/incallui/fragment/CallCardFragment;)V

    goto :goto_0

    .line 1456
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$5;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/fragment/CallCardFragment;->mIsBlinkForEndCall:Z
    invoke-static {v0, v1}, Lcom/android/incallui/fragment/CallCardFragment;->access$402(Lcom/android/incallui/fragment/CallCardFragment;Z)Z

    goto :goto_0
.end method
