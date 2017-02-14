.class Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$1;
.super Ljava/lang/Object;
.source "AccessibilityDialogPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->-get1(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->-get1(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method
