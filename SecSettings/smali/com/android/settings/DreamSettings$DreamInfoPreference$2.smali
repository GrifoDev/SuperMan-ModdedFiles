.class Lcom/android/settings/DreamSettings$DreamInfoPreference$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings$DreamInfoPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;

.field final synthetic val$holder:Landroid/support/v7/preference/PreferenceViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings$DreamInfoPreference;Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;->this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;

    iput-object p2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;->val$holder:Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;->this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;

    iget-object v0, v0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Lcom/android/settings/DreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0440

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->-set1(I)I

    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;->this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;

    iget-object v0, v0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/DreamSettings;->-get1()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;->val$holder:Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;->this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;

    invoke-virtual {v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->performClick()V

    return-void
.end method
