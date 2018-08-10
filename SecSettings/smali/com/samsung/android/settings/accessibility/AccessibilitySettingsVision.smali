.class public Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccessibilitySettingsVision.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$1;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$AccessibilityVisionObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccessibilityVisionObserver:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$AccessibilityVisionObserver;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->updatePreferenceStates()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/VoiceAssistantPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/VoiceAssistantPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/VoiceAssistantHelpPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/VoiceAssistantHelpPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/RapidKeyInputPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/RapidKeyInputPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/FontPreviewPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/FontPreviewPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/MagnifierWindowPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/MagnifierWindowPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/MagnificationPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/MagnificationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/LargePointerPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/LargePointerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/ColorLensPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/ColorLensPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/ColorInversionPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/ColorInversionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/ColorCorrectionPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/ColorCorrectionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AccessibilitySettings_Vision"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x12e

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15000b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$AccessibilityVisionObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$AccessibilityVisionObserver;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->mAccessibilityVisionObserver:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$AccessibilityVisionObserver;

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->mAccessibilityVisionObserver:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$AccessibilityVisionObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$AccessibilityVisionObserver;->unregister(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Vision"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->mAccessibilityVisionObserver:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$AccessibilityVisionObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$AccessibilityVisionObserver;->register(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Vision"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
