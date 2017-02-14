.class Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$6;
.super Ljava/lang/Object;
.source "ShareAccessibilitySettingsReceive.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->showImportAndRestoreDialog(Ljava/util/HashMap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$restoreSettingValue:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$6;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$6;->val$restoreSettingValue:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$6;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$6;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->-get0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$6;->val$restoreSettingValue:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->applySettings(Landroid/content/Context;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$6;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$6;->val$filename:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->-wrap0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$6;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->finish()V

    return-void
.end method
