.class Lcom/samsung/android/settings/qstile/SecAccountTiles$3;
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

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$3;->this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$3;->this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

    invoke-static {v0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->-get0(Lcom/samsung/android/settings/qstile/SecAccountTiles;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
