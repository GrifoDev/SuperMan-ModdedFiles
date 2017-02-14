.class Lcom/samsung/android/settings/nearby/RejectListPreference$2;
.super Ljava/lang/Object;
.source "RejectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nearby/RejectListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/RejectListPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearby/RejectListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearby/RejectListPreference$2;->this$0:Lcom/samsung/android/settings/nearby/RejectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string/jumbo v0, "RejectListPreference"

    const-string/jumbo v1, "showDialog"

    const-string/jumbo v2, "No List Items: Dismiss"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/nearby/RejectListPreference;->-set0(Z)Z

    return-void
.end method
