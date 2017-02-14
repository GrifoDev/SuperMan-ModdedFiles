.class Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity$1;
.super Ljava/lang/Object;
.source "AccessibilitySettingsForSetupWizardActivity.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;

.field final synthetic val$parentView:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity$1;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity$1;->val$parentView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity$1;->val$parentView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object p2
.end method
