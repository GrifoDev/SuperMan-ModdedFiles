.class Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$4;
.super Ljava/lang/Object;
.source "DarkScreenPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->showSOSMessagesDialog(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string/jumbo v0, "DarkScreenPreferenceController"

    const-string/jumbo v1, "Turn on Dark screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lcd_curtain"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "DARK"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12e

    const/16 v3, 0x135d

    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    const-string/jumbo v0, "DarkScreenPreferenceController"

    const-string/jumbo v1, "Turn off Camera quick launch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "double_tab_launch"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
