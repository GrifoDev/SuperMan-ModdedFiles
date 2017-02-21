.class Landroid/os/DVFSHelper$ModelON5;
.super Landroid/os/DVFSHelper$ModelISLAND;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelON5"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    iput-object p1, p0, Landroid/os/DVFSHelper$ModelON5;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelISLAND;-><init>(Landroid/os/DVFSHelper;)V

    const-string/jumbo v0, "CG"

    iput-object v0, p0, Landroid/os/DVFSHelper$Model;->PLUS_CGB_FREQ:Ljava/lang/String;

    return-void
.end method
