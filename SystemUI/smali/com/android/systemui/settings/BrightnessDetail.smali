.class public Lcom/android/systemui/settings/BrightnessDetail;
.super Landroid/widget/FrameLayout;
.source "BrightnessDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessDetail$1;,
        Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;
    }
.end annotation


# instance fields
.field private brightnessEditor:Landroid/content/SharedPreferences$Editor;

.field private brightnessPref:Landroid/content/SharedPreferences;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field protected mBrightnessDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mBrightnessPrefInitialized:Z

.field private mContext:Landroid/content/Context;

.field private mDeatilCallback:Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

.field private mDetailConvertView:Landroid/view/View;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mDeatilCallback:Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mDetailConvertView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/settings/BrightnessDetail;Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/settings/BrightnessDetail;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mDetailConvertView:Landroid/view/View;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessDetail$1;-><init>(Lcom/android/systemui/settings/BrightnessDetail;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "brightness_pref"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "initialized"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessPrefInitialized:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessPrefInitialized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "initialized"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iput-boolean v2, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessPrefInitialized:Z

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "4006"

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "4007"

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v3, "brightness_on_top"

    invoke-virtual {v0, v3, v5}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public setBrightnessDetailCallback(Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mDeatilCallback:Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    return-void
.end method

.method public showDetail(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    :cond_0
    return-void
.end method
