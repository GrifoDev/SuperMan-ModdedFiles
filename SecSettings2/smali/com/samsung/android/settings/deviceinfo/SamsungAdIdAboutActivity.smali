.class public Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;
.super Lcom/android/settings/InstrumentedActivity;
.source "SamsungAdIdAboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity$1;
    }
.end annotation


# static fields
.field static textView:Landroid/widget/TextView;


# instance fields
.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity$1;-><init>(Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0401fd

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->setContentView(I)V

    const v2, 0x7f110561

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->textView:Landroid/widget/TextView;

    const v2, 0x7f0b0538

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0b0539

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SamsungAdIdAboutActivity"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v2, "SamsungAdIdAboutActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
