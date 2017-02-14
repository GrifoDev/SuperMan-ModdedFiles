.class Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;
.super Ljava/lang/Object;
.source "DualSoundRingtoneSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/DualSoundRingtoneSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I

    move-result v1

    if-ne v1, v5, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I

    move-result v1

    if-ne v1, v5, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/16 v3, 0x100

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
