.class Lcom/samsung/android/settings/nearby/AcceptListPreference$3;
.super Ljava/lang/Object;
.source "AcceptListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nearby/AcceptListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/AcceptListPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearby/AcceptListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference$3;->this$0:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string/jumbo v0, "AcceptListPreference"

    const-string/jumbo v1, "showDialog"

    const-string/jumbo v2, "No List Items: OK"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->-set0(Z)Z

    return-void
.end method
