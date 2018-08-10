.class Lcom/android/settings/ScreenPinningSettings$3;
.super Ljava/lang/Object;
.source "ScreenPinningSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ScreenPinningSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ScreenPinningSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ScreenPinningSettings$3;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$3;->this$0:Lcom/android/settings/ScreenPinningSettings;

    const v2, 0x7f121740

    invoke-virtual {v1, v2}, Lcom/android/settings/ScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ScreenPinningSettings$3;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v2}, Lcom/android/settings/ScreenPinningSettings;->-wrap2(Lcom/android/settings/ScreenPinningSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$3;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-virtual {v1}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-set0(I)I

    :goto_1
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$3;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-virtual {v1}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/ScreenPinningSettings;->-get0()I

    move-result v3

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x3e8

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$3;->this$0:Lcom/android/settings/ScreenPinningSettings;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/ScreenPinningSettings;->-wrap1(Lcom/android/settings/ScreenPinningSettings;Z)Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$3;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-virtual {v1}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-set0(I)I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method
