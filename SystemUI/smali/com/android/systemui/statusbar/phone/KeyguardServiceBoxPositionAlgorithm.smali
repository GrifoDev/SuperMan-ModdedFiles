.class public Lcom/android/systemui/statusbar/phone/KeyguardServiceBoxPositionAlgorithm;
.super Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.source "KeyguardServiceBoxPositionAlgorithm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;Z)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    iput v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    iput v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardServiceBoxPositionAlgorithm;->mKeyguardStatusHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardServiceBoxPositionAlgorithm;->mAccessoryBottomMarginOffset:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    return-void
.end method
