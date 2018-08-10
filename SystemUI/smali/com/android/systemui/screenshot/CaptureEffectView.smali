.class public Lcom/android/systemui/screenshot/CaptureEffectView;
.super Landroid/view/View;
.source "CaptureEffectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field protected imageview:Landroid/widget/ImageView;

.field protected mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    return-void
.end method


# virtual methods
.method public setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    return-void
.end method

.method public show(Landroid/widget/ImageView;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not implements"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
