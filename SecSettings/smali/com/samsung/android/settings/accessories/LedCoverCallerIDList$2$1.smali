.class Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LedCoverCallerIDList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;

.field final synthetic val$checkboxWidth:I

.field final synthetic val$container:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;Landroid/widget/RelativeLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2$1;->this$1:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;

    iput-object p2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2$1;->val$container:Landroid/widget/RelativeLayout;

    iput p3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2$1;->val$checkboxWidth:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2$1;->val$container:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2$1;->val$container:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2$1;->val$checkboxWidth:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2$1;->this$1:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;

    iget-object v0, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-get0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2$1;->val$checkboxWidth:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->setIsEditMode(ZI)V

    return-void
.end method
