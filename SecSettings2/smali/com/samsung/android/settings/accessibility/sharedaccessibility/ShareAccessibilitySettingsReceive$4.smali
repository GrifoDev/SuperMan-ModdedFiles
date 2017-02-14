.class Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$4;
.super Ljava/lang/Object;
.source "ShareAccessibilitySettingsReceive.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->showImportFailureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$4;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string/jumbo v0, "ShareAccessibilitySettingsReceive"

    const-string/jumbo v1, "Dialog Dismiss "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$4;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->finish()V

    return-void
.end method
