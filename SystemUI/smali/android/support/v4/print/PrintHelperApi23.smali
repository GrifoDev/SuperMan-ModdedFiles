.class Landroid/support/v4/print/PrintHelperApi23;
.super Landroid/support/v4/print/PrintHelperApi20;
.source "PrintHelperApi23.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation


# virtual methods
.method protected copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/print/PrintHelperApi20;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    :cond_0
    return-object v0
.end method
