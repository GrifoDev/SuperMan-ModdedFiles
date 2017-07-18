.class Lcom/android/launcher2/Launcher$28;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->showRequestDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$28;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    sput-boolean v3, Lcom/android/launcher2/HomeView;->mZeroActivityLaunched:Z

    sget-object v0, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x30200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher2/Launcher$28;->this$0:Lcom/android/launcher2/Launcher;

    sget-object v1, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher$28;->this$0:Lcom/android/launcher2/Launcher;

    const v1, 0x7f05000a

    const v2, 0x7f05000b

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher$28;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0, v3}, Lcom/android/launcher2/Launcher;->access$1502(Lcom/android/launcher2/Launcher;Z)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/Launcher;->mRequestDialog:Landroid/app/AlertDialog;

    return-void
.end method
