.class public Lcom/android/systemui/statusbar/phone/DcmLockIconDummy;
.super Lcom/android/systemui/statusbar/phone/LockIcon;
.source "DcmLockIconDummy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LockIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmLockIconDummy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isLockIconSelected(FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBottomIconsCallback(Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;)V
    .locals 0

    return-void
.end method

.method public setDeviceInteractive(Z)V
    .locals 0

    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0

    return-void
.end method

.method public setTransientFpError(Z)V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method

.method public update(Z)V
    .locals 0

    return-void
.end method
