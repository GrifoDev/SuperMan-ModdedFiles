.class Lcom/samsung/android/settings/GlobalLteRoaming$6;
.super Ljava/lang/Object;
.source "GlobalLteRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/GlobalLteRoaming;->showChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GlobalLteRoaming;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GlobalLteRoaming;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GlobalLteRoaming$6;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalLteRoaming$6;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    invoke-static {v0}, Lcom/samsung/android/settings/GlobalLteRoaming;->-get1(Lcom/samsung/android/settings/GlobalLteRoaming;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalLteRoaming$6;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalLteRoaming;->-wrap0(Lcom/samsung/android/settings/GlobalLteRoaming;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
