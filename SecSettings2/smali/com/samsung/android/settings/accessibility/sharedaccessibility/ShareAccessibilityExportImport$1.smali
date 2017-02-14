.class Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$1;
.super Ljava/lang/Object;
.source "ShareAccessibilityExportImport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-get1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-get2()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ShareAccessibilityExportImport"

    const-string/jumbo v1, "Dialog Dismiss "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    :cond_0
    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-set2(Z)Z

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-set1(Z)Z

    return-void
.end method
