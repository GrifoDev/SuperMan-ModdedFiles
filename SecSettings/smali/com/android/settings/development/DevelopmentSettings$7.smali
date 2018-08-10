.class Lcom/android/settings/development/DevelopmentSettings$7;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/DevelopmentSettings;->confirmEnableOemUnlock()V
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

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettings$7;->this$0:Lcom/android/settings/development/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings$7;->this$0:Lcom/android/settings/development/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings$7;->this$0:Lcom/android/settings/development/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettings;->-wrap3(Lcom/android/settings/development/DevelopmentSettings;)V

    return-void
.end method
