.class Lcom/android/settings/development/DevelopmentSettings$8;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/DevelopmentSettings;->confirmDisableOemUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettings$8;->this$0:Lcom/android/settings/development/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/android/settings/development/DevelopmentSettings;->isSkeymasterSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings$8;->this$0:Lcom/android/settings/development/DevelopmentSettings;

    invoke-static {v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->-wrap2(Lcom/android/settings/development/DevelopmentSettings;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings$8;->this$0:Lcom/android/settings/development/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings/development/OemUnlockUtils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0
.end method
