.class Landroid/os/StrictMode$StrictModeUnbufferedIOViolation;
.super Landroid/os/StrictMode$StrictModeViolation;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrictModeUnbufferedIOViolation"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/os/StrictMode$StrictModeViolation;-><init>(IILjava/lang/String;)V

    return-void
.end method
