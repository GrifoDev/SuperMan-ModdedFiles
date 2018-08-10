.class public Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;
.super Ljava/lang/Object;
.source "ConfigurationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController;
.implements Lcom/android/systemui/ConfigurationChangedReceiver;


# instance fields
.field private mDensity:I

.field private mFontScale:F

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mFontScale:F

    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mDensity:I

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_ConfigurationControllerImpl_1496(Landroid/content/res/Configuration;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_ConfigurationControllerImpl_1728(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mDensity:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mFontScale:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mDensity:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mFontScale:F

    :cond_1
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method
