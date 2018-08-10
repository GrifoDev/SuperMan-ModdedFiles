.class Lcom/samsung/android/settings/accessibility/AccessibilitySettings$4;
.super Landroid/database/ContentObserver;
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

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-wrap2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;Landroid/support/v7/preference/Preference;)V

    return-void
.end method
