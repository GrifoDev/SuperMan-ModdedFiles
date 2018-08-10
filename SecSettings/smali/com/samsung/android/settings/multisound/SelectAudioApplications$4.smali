.class Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;
.super Ljava/lang/Object;
.source "SelectAudioApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/SelectAudioApplications;->addAddItem()Landroid/view/View;
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

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-virtual {v0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    const-class v2, Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f121871

    const/4 v7, 0x0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-set0(Lcom/samsung/android/settings/multisound/SelectAudioApplications;Z)Z

    return-void
.end method
