.class Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyButtonRipple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->-get1(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->-get1(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->-get0(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->-set0(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    :cond_0
    return-void
.end method
