.class public Lcom/android/systemui/ChargingView;
.super Landroid/widget/ImageView;
.source "ChargingView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mCharging:Z

.field private mDark:Z

.field private mImageResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010119

    aput v3, v2, v4

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iput v1, p0, Lcom/android/systemui/ChargingView;->mImageResource:I

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->updateVisibility()V

    return-void
.end method

.method private updateVisibility()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ChargingView;->mCharging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/ChargingView;->mDark:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/ChargingView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/ChargingView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/android/systemui/ChargingView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZIIIIZ)V
    .locals 0

    iput-boolean p3, p0, Lcom/android/systemui/ChargingView;->mCharging:Z

    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->updateVisibility()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/ChargingView;->mImageResource:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/ChargingView;->setImageResource(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/ChargingView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public setDark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ChargingView;->mDark:Z

    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->updateVisibility()V

    return-void
.end method
