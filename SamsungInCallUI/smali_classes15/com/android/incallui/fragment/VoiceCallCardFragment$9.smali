.class Lcom/android/incallui/fragment/VoiceCallCardFragment$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoiceCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment;->getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .prologue
    .line 1927
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$9;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1930
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/fragment/CallCardFragment;->sIsWindowRevealed:Z

    .line 1931
    return-void
.end method