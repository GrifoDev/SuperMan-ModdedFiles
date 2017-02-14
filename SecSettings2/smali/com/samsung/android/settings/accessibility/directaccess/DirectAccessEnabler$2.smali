.class Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$2;
.super Ljava/lang/Object;
.source "DirectAccessEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->showExclusiveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$2;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$2;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->-get1(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
