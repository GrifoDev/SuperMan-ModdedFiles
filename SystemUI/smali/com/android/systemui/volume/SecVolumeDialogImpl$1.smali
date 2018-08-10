.class Lcom/android/systemui/volume/SecVolumeDialogImpl$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
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

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    return-void
.end method
