.class Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$2;
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

.field final synthetic val$container:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$2;->this$1:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;

    iput-object p2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$2;->val$container:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$2;->val$container:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$2;->val$container:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$2;->val$container:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$2;->val$container:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$2;->val$container:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$2;->this$1:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;

    iget-object v0, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-get0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->setIsEditMode(ZI)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$2;->this$1:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;

    iget-object v0, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-wrap2(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V

    return-void
.end method
