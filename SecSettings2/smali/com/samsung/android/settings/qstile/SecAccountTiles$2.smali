.class Lcom/samsung/android/settings/qstile/SecAccountTiles$2;
.super Ljava/lang/Object;
.source "SecAccountTiles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/qstile/SecAccountTiles;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$2;->this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$2;->this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

    invoke-static {v0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->-get1(Lcom/samsung/android/settings/qstile/SecAccountTiles;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
