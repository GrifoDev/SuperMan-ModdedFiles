.class Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "AccessibilityShortcutPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    return-void
.end method
