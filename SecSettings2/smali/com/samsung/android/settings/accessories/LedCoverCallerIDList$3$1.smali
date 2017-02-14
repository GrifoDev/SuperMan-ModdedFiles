.class Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LedCoverCallerIDList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;

.field final synthetic val$chb:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$1;->this$1:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;

    iput-object p2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$1;->val$chb:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$1;->val$chb:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$1;->val$chb:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$1;->val$chb:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
