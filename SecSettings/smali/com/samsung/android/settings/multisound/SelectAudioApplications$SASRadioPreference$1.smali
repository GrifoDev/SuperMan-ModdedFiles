.class Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference$1;
.super Ljava/lang/Object;
.source "SelectAudioApplications.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference$1;->this$1:Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference$1;->this$1:Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference$1;->this$1:Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->showDeleteList(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
