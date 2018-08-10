.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$11;
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

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$11;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$11;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$11;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->turnOffExlusiveOptions(Landroid/content/Context;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$11$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$11$1;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$11;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
