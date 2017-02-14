.class Lcom/samsung/android/settings/accessibility/AccessibilitySettings$3;
.super Lcom/samsung/android/settings/accessibility/SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$3;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$3;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-wrap2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V

    return-void
.end method
