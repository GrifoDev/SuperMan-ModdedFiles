.class Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;
.super Lcom/android/settings/applications/assist/AssistSettingObserver;
.source "AssistGesturePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/AssistGesturePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final ASSIST_GESTURE_ENABLED_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/gestures/AssistGesturePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/gestures/AssistGesturePreferenceController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/AssistGesturePreferenceController;

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;-><init>()V

    const-string/jumbo v0, "assist_gesture_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;->ASSIST_GESTURE_ENABLED_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected getSettingUris()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;->ASSIST_GESTURE_ENABLED_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onSettingChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/AssistGesturePreferenceController;

    invoke-static {v0}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->-get1(Lcom/android/settings/gestures/AssistGesturePreferenceController;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/AssistGesturePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->isAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/AssistGesturePreferenceController;

    invoke-static {v0}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->-get0(Lcom/android/settings/gestures/AssistGesturePreferenceController;)Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/AssistGesturePreferenceController;

    invoke-static {v0}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->-get0(Lcom/android/settings/gestures/AssistGesturePreferenceController;)Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;->refreshPreferences()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/AssistGesturePreferenceController;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/AssistGesturePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->isAvailable()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->-set0(Lcom/android/settings/gestures/AssistGesturePreferenceController;Z)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/AssistGesturePreferenceController;

    invoke-static {v0}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->-wrap0(Lcom/android/settings/gestures/AssistGesturePreferenceController;)V

    goto :goto_0
.end method
