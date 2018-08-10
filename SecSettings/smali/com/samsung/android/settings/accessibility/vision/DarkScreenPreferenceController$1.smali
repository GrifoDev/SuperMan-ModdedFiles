.class Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$1;
.super Ljava/lang/Object;
.source "DarkScreenPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->showQuickLaunchDialog(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;

.field final synthetic val$preference:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;Landroid/support/v7/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$1;->val$preference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$1;->val$preference:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->-wrap0(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;ZLandroid/support/v7/preference/Preference;)V

    const-string/jumbo v0, "DarkScreenPreferenceController"

    const-string/jumbo v1, "Turn off Camera quick launch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "double_tab_launch"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
