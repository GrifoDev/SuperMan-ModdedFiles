.class public final Landroid/media/DeniedByServerException;
.super Landroid/media/MediaDrmException;
.source "DeniedByServerException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
