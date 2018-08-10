.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$12;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getKeyguardServiceBoxBigPage(Lcom/android/systemui/servicebox/pages/KeyguardPageItem;Z)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

.field final synthetic val$page:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$12;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    iput-object p2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$12;->val$page:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$12;->val$page:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$12;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-wrap11(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    const/4 v0, 0x1

    return v0
.end method
