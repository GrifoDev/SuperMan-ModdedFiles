.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get14(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get14(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->setFullScreenMode(ZJ)V

    :cond_0
    return-void
.end method
