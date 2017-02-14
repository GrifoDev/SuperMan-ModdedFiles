.class Lcom/android/settings/DreamSettings$4;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DreamSettings$4;->this$0:Lcom/android/settings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/DreamSettings$4;->this$0:Lcom/android/settings/DreamSettings;

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->-get3(Lcom/android/settings/DreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v3

    if-eqz p2, :cond_0

    if-ne p2, v4, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnDock(Z)V

    iget-object v0, p0, Lcom/android/settings/DreamSettings$4;->this$0:Lcom/android/settings/DreamSettings;

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->-get3(Lcom/android/settings/DreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    if-eq p2, v1, :cond_1

    if-ne p2, v4, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnSleep(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/DreamSettings$4;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Lcom/android/settings/DreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->-set2(I)I

    iget-object v0, p0, Lcom/android/settings/DreamSettings$4;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/DreamSettings;->-get2()I

    move-result v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
