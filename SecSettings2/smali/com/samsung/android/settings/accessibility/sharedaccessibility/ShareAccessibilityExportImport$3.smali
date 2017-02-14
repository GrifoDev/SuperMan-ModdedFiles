.class Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;
.super Ljava/lang/Object;
.source "ShareAccessibilityExportImport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string/jumbo v2, "ShareAccessibilityExportImport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RESTORE path :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-get4(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-get4(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->LoadValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-set0(Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-get0()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ShareAccessibilityExportImport"

    const-string/jumbo v3, "RevSettingValues is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-get3(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0268

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-get3(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-get0()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->applySettings(Landroid/content/Context;Ljava/util/HashMap;)V

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-get4(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-get4(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-get4(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ShareAccessibilityExportImport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSelectionFileName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->-wrap0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    goto :goto_1
.end method
