.class Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    return-void
.end method
