.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$14;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

.field final synthetic val$finalContainerHeight:I


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$14;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    iput p2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$14;->val$finalContainerHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$14;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$14;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$14;->val$finalContainerHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$14;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    return v1
.end method
