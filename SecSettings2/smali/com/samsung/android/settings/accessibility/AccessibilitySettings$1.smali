.class Lcom/samsung/android/settings/accessibility/AccessibilitySettings$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$1;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$1;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$1;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-wrap2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V

    :cond_0
    return-void
.end method
