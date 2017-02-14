.class Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity$2;
.super Ljava/lang/Object;
.source "AccessibilitySettingsForSetupWizardActivity.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigateBack()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->onNavigateUp()Z

    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    return-void
.end method
