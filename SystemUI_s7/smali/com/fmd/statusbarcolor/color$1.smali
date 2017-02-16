.class public Lcom/fmd/statusbarcolor/color$1;
.super Ljava/lang/Object;
.source "color.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fmd/statusbarcolor/color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fmd/statusbarcolor/color;


# direct methods
.method constructor <init>(Lcom/fmd/statusbarcolor/color;)V
    .locals 0

    iput-object p1, p0, Lcom/fmd/statusbarcolor/color$1;->this$0:Lcom/fmd/statusbarcolor/color;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v3, p0, Lcom/fmd/statusbarcolor/color$1;->this$0:Lcom/fmd/statusbarcolor/color;

    invoke-virtual {v3}, Lcom/fmd/statusbarcolor/color;->SetColor()V

    iget v0, v3, Lcom/fmd/statusbarcolor/color;->mIsScreenOff:I

    if-eqz v0, :cond_0

    iget v0, v3, Lcom/fmd/statusbarcolor/color;->mIsLockScreenDisabled:I

    if-nez v0, :cond_1

    iget v0, v3, Lcom/fmd/statusbarcolor/color;->mIsKeyguardLocked:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v3, Lcom/fmd/statusbarcolor/color;->Updater:Landroid/os/Handler;

    iget-object v1, v3, Lcom/fmd/statusbarcolor/color;->UPDATE:Ljava/lang/Runnable;

    iget v2, v3, Lcom/fmd/statusbarcolor/color;->UpdaterTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
