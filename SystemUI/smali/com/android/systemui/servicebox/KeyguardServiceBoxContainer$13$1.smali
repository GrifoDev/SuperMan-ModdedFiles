.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardServiceBoxContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13$1;->this$1:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13$1;->this$1:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;

    iget-object v0, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-set1(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)Z

    return-void
.end method
