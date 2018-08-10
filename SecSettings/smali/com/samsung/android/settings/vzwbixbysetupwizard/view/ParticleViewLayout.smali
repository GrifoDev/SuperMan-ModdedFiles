.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/view/ParticleViewLayout;
.super Landroid/widget/FrameLayout;
.source "ParticleViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/vzwbixbysetupwizard/view/ParticleViewLayout$OnBixbyIconClickListener;
    }
.end annotation


# instance fields
.field mOnBixbyIconClickListener:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/ParticleViewLayout$OnBixbyIconClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/ParticleViewLayout;->mOnBixbyIconClickListener:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/ParticleViewLayout$OnBixbyIconClickListener;

    return-void
.end method


# virtual methods
.method public setGoogleIconLogo()V
    .locals 2

    const-string/jumbo v0, "ParticleViewLayout"

    const-string/jumbo v1, "Dummy function - setGoogleIconLogo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnBixbyIconClickListener(Lcom/samsung/android/settings/vzwbixbysetupwizard/view/ParticleViewLayout$OnBixbyIconClickListener;)V
    .locals 2

    const-string/jumbo v0, "ParticleViewLayout"

    const-string/jumbo v1, "Dummy function - setOnBixbyIconClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
