.class Lcom/android/systemui/tv/pip/PipOnboardingActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PipOnboardingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tv/pip/PipOnboardingActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipOnboardingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipOnboardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity$2;->this$0:Lcom/android/systemui/tv/pip/PipOnboardingActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity$2;->this$0:Lcom/android/systemui/tv/pip/PipOnboardingActivity;

    const v2, 0x7f130402

    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
