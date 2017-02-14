.class Landroid/print/SemPrinterDiscoverySession$1;
.super Ljava/lang/Object;
.source "SemPrinterDiscoverySession.java"

# interfaces
.implements Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/SemPrinterDiscoverySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/SemPrinterDiscoverySession;


# direct methods
.method constructor <init>(Landroid/print/SemPrinterDiscoverySession;)V
    .locals 0

    iput-object p1, p0, Landroid/print/SemPrinterDiscoverySession$1;->this$0:Landroid/print/SemPrinterDiscoverySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintersChanged()V
    .locals 2

    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession$1;->this$0:Landroid/print/SemPrinterDiscoverySession;

    invoke-static {v0}, Landroid/print/SemPrinterDiscoverySession;->-get0(Landroid/print/SemPrinterDiscoverySession;)Landroid/print/SemPrinterDiscoverySession$OnPrintersChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemPrinterDiscoverySession"

    const-string/jumbo v1, "Error mListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession$1;->this$0:Landroid/print/SemPrinterDiscoverySession;

    invoke-static {v0}, Landroid/print/SemPrinterDiscoverySession;->-get0(Landroid/print/SemPrinterDiscoverySession;)Landroid/print/SemPrinterDiscoverySession$OnPrintersChangeListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/print/SemPrinterDiscoverySession$OnPrintersChangeListener;->onPrintersChanged()V

    return-void
.end method
