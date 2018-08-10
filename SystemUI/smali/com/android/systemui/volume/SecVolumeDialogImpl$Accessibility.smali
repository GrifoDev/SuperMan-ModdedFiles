.class final Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;
.super Landroid/view/View$AccessibilityDelegate;
.source "SecVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Accessibility"
.end annotation


# instance fields
.field private mFeedbackEnabled:Z

.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->mFeedbackEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->updateFeedbackEnabled()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method

.method private computeFeedbackEnabled()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get2(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1
    return v5
.end method

.method private updateFeedbackEnabled()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->computeFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->mFeedbackEnabled:Z

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get15(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility$1;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get15(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get2(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility$2;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->updateFeedbackEnabled()V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->rescheduleTimeoutH()V

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
