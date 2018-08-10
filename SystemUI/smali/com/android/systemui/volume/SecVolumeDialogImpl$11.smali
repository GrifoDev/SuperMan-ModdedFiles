.class Lcom/android/systemui/volume/SecVolumeDialogImpl$11;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogMotion$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimatingChanged(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get36(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get19(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set18(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get35(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get19(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set17(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    :cond_2
    return-void
.end method
