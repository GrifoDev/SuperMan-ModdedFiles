.class Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "AssistGestureSensitivityPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final ASSIST_GESTURE_ENABLED_URI:Landroid/net/Uri;

.field private final ASSIST_GESTURE_SENSITIVITY_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "assist_gesture_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;->ASSIST_GESTURE_ENABLED_URI:Landroid/net/Uri;

    const-string/jumbo v0, "assist_gesture_sensitivity"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;->ASSIST_GESTURE_SENSITIVITY_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;

    invoke-static {v0}, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->-wrap0(Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;)V

    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;->ASSIST_GESTURE_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;->ASSIST_GESTURE_SENSITIVITY_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
