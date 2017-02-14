.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$14;
.super Ljava/lang/Object;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->showAutoClickExclusivePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$14;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$14;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_autoclick_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$14;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$14;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->turnOffExlusiveOptions(Landroid/content/Context;I)V

    return-void
.end method
