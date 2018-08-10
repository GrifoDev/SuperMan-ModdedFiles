.class Lcom/android/systemui/volume/SecVolumeDialogImpl$14;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V
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

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$14;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$14;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap26(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)V

    return-void
.end method
