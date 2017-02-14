.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlockMethodStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get27(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set18(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get27(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set27(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    return-void
.end method
