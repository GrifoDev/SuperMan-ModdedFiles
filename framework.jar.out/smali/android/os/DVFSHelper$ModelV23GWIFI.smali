.class Landroid/os/DVFSHelper$ModelV23GWIFI;
.super Landroid/os/DVFSHelper$ModelHA;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelV23GWIFI"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    iput-object p1, p0, Landroid/os/DVFSHelper$ModelV23GWIFI;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelHA;-><init>(Landroid/os/DVFSHelper;)V

    const v0, 0xf4240

    iput v0, p0, Landroid/os/DVFSHelper$Model;->BROWSER_FLING_ARM_FREQ:I

    return-void
.end method
