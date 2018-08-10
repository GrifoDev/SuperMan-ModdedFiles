.class Lcom/samsung/android/settings/multisound/SelectAudioApplications$3;
.super Ljava/lang/Object;
.source "SelectAudioApplications.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/SelectAudioApplications;->createCheckList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$3;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/multisound/SASButtonPreference;

    const-string/jumbo v3, "true"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$3;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v3}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get5(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$3;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v3}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get5(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$3;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v3}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get2(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$3;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v4}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get5(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return v2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$3;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v3}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get5(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
