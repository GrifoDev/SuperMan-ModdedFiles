.class Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$2;
.super Ljava/lang/Object;
.source "DetailsBackgroundVideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->internalStartPlayback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$2;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$2;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(Z)V

    return-void
.end method
