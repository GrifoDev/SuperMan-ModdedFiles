.class Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;
.super Ljava/lang/Object;
.source "KeyguardBottomHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->startHintAnimation(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v4, 0x226

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

    move-result-object v6

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method
