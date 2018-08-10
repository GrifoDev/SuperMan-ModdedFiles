.class Lcom/android/systemui/qs/bar/QuickConnectBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickConnectBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/QuickConnectBar;->animateViews(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;

.field final synthetic val$out:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/QuickConnectBar;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$3;->this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$3;->val$out:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$3;->val$out:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$3;->this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/QuickConnectBar;->-get0(Lcom/android/systemui/qs/bar/QuickConnectBar;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$3;->val$out:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
