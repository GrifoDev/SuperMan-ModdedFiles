.class Lcom/samsung/android/settings/GlobalLteRoaming$4;
.super Ljava/lang/Object;
.source "GlobalLteRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$mLteRoamingOnOff:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GlobalLteRoaming;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GlobalLteRoaming$4;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    iput-boolean p2, p0, Lcom/samsung/android/settings/GlobalLteRoaming$4;->val$mLteRoamingOnOff:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalLteRoaming$4;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    iget-boolean v0, p0, Lcom/samsung/android/settings/GlobalLteRoaming$4;->val$mLteRoamingOnOff:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/settings/GlobalLteRoaming;->-wrap2(Lcom/samsung/android/settings/GlobalLteRoaming;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
