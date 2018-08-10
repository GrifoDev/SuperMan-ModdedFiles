.class Lcom/android/systemui/stackdivider/GuideViewController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GuideViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;ZZLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/GuideViewController;

.field final synthetic val$dividerView:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/GuideViewController;Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/GuideViewController$1;->this$0:Lcom/android/systemui/stackdivider/GuideViewController;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/GuideViewController$1;->val$dividerView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController$1;->val$dividerView:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->onGuideViewVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController$1;->this$0:Lcom/android/systemui/stackdivider/GuideViewController;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/GuideViewController;->-wrap0(Lcom/android/systemui/stackdivider/GuideViewController;)V

    return-void
.end method
