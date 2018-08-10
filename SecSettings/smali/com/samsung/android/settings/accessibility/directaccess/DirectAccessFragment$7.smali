.class Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$7;
.super Ljava/lang/Object;
.source "DirectAccessFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$7;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$7;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$7;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "any_screen_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
