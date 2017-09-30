.class Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/accessory/CallTimeBlinkEffect;->animateForBlinkCallTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;


# direct methods
.method constructor <init>(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-static {v0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->access$106(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)I

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-static {v0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->access$100(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-static {v0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->access$200(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    iget-object v0, v0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    iget-object v0, v0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    goto :goto_0
.end method
