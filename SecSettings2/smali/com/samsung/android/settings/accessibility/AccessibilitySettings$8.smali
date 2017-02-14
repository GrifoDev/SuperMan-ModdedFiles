.class Lcom/samsung/android/settings/accessibility/AccessibilitySettings$8;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$8;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$8;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-wrap1(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;I)V

    const-string/jumbo v4, "ro.screenreader.market"

    const-string/jumbo v5, "market://details?id=com.google.android.marvin.talkback"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$8;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
