.class public final Landroid/print/SemPrinterDiscoverySession;
.super Ljava/lang/Object;
.source "SemPrinterDiscoverySession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/SemPrinterDiscoverySession$1;,
        Landroid/print/SemPrinterDiscoverySession$OnPrintersChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SemPrinterDiscoverySession"


# instance fields
.field private mListener:Landroid/print/SemPrinterDiscoverySession$OnPrintersChangeListener;

.field private mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

.field private final mPrintersChangeListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;


# direct methods
.method static synthetic -get0(Landroid/print/SemPrinterDiscoverySession;)Landroid/print/SemPrinterDiscoverySession$OnPrintersChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mListener:Landroid/print/SemPrinterDiscoverySession$OnPrintersChangeListener;

    return-object v0
.end method

.method constructor <init>(Landroid/print/IPrintManager;Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/print/SemPrinterDiscoverySession$1;

    invoke-direct {v0, p0}, Landroid/print/SemPrinterDiscoverySession$1;-><init>(Landroid/print/SemPrinterDiscoverySession;)V

    iput-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrintersChangeListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    new-instance v0, Landroid/print/PrinterDiscoverySession;

    invoke-direct {v0, p1, p2, p3}, Landroid/print/PrinterDiscoverySession;-><init>(Landroid/print/IPrintManager;Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemPrinterDiscoverySession"

    const-string/jumbo v1, "Error PrinterDiscoverySession instance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->destroy()V

    return-void
.end method

.method public final getPrinters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemPrinterDiscoverySession"

    const-string/jumbo v1, "Error PrinterDiscoverySession instance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->getPrinters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isPrinterDiscoveryStarted()Z
    .locals 2

    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemPrinterDiscoverySession"

    const-string/jumbo v1, "Error PrinterDiscoverySession instance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->isPrinterDiscoveryStarted()Z

    move-result v0

    return v0
.end method

.method public final setOnPrintersChangeListener(Landroid/print/SemPrinterDiscoverySession$OnPrintersChangeListener;)V
    .locals 2

    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemPrinterDiscoverySession"

    const-string/jumbo v1, "Error PrinterDiscoverySession instance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Landroid/print/SemPrinterDiscoverySession;->mListener:Landroid/print/SemPrinterDiscoverySession$OnPrintersChangeListener;

    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

    iget-object v1, p0, Landroid/print/SemPrinterDiscoverySession;->mPrintersChangeListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrinterDiscoverySession;->setOnPrintersChangeListener(Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;)V

    return-void
.end method

.method public final startPrinterDiscovery(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemPrinterDiscoverySession"

    const-string/jumbo v1, "Error PrinterDiscoverySession instance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0, p1}, Landroid/print/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    return-void
.end method

.method public final stopPrinterDiscovery()V
    .locals 2

    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemPrinterDiscoverySession"

    const-string/jumbo v1, "Error PrinterDiscoverySession instance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/print/SemPrinterDiscoverySession;->mPrinterDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->stopPrinterDiscovery()V

    return-void
.end method
