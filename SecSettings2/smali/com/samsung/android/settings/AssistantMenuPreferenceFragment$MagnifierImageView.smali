.class public Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;
.super Landroid/preference/Preference;
.source "AssistantMenuPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MagnifierImageView"
.end annotation


# instance fields
.field public currentMag:I

.field public img:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field private mIcon:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->mIcon:[I

    iput-object p1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->mContext:Landroid/content/Context;

    const v0, 0x7f040174

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->setLayoutResource(I)V

    iput p2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->currentMag:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->setSelectable(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020342
        0x7f020343
        0x7f020344
        0x7f020345
        0x7f020346
        0x7f020347
        0x7f020348
        0x7f020349
    .end array-data
.end method


# virtual methods
.method public ImageChange(I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x7

    if-le p1, v1, :cond_1

    div-int/lit8 p1, p1, 0x7

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->mIcon:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->mIcon:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const-string/jumbo v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Magnifier image onBindView currentMag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->currentMag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f11046e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    iget v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->currentMag:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->ImageChange(I)V

    return-void
.end method

.method public setHoverZoomImageLevel(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->currentMag:I

    iget v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->currentMag:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->ImageChange(I)V

    return-void
.end method
