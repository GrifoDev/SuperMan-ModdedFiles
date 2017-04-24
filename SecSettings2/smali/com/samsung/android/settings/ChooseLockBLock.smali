.class public Lcom/samsung/android/settings/ChooseLockBLock;
.super Lcom/android/settings/InstrumentedActivity;
.source "ChooseLockBLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "Block"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, ":android:show_fragment_title"

    const v2, 0x7f0b081e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ChooseLockBLock;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockBLock;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockBLock;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f11019b -> :sswitch_1
        0x7f1101ae -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040062

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ChooseLockBLock;->setContentView(I)V

    const v2, 0x7f11019b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ChooseLockBLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f1101ae

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ChooseLockBLock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
