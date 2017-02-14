.class Lcom/samsung/android/settings/NewOneHandOperationSettings$4;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/NewOneHandOperationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$4;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$4;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get2(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "OneHandOperationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Show Hard key switch going to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$4;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "one_handed_op_show_hard_keys"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
