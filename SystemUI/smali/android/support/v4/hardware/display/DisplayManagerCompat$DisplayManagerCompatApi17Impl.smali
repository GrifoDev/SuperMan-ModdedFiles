.class Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi17Impl;
.super Landroid/support/v4/hardware/display/DisplayManagerCompat;
.source "DisplayManagerCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/display/DisplayManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayManagerCompatApi17Impl"
.end annotation


# instance fields
.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat;-><init>()V

    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi17Impl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method
