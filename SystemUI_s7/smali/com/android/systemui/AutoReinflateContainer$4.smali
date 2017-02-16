.class Lcom/android/systemui/AutoReinflateContainer$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AutoReinflateContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/AutoReinflateContainer;->animatePanelAlpha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/AutoReinflateContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/AutoReinflateContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/AutoReinflateContainer$4;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/AutoReinflateContainer$4;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/android/systemui/AutoReinflateContainer;->-wrap1(Lcom/android/systemui/AutoReinflateContainer;F)V

    return-void
.end method
