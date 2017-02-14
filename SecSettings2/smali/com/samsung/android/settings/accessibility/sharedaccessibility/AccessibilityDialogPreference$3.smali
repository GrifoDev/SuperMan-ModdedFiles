.class Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$3;
.super Ljava/lang/Object;
.source "AccessibilityDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->-get2(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->-get0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->-get0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;->onItemSelected(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    return-void
.end method
