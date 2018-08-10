.class Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController$1;
.super Ljava/lang/Object;
.source "VoiceLabelPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController;->showDownloadDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "VOLA"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.android.app.samsungapps"

    const-string/jumbo v3, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "directcall"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "CallerType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "GUID"

    const-string/jumbo v3, "com.sec.android.app.voicenote"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "cover"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x14000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
