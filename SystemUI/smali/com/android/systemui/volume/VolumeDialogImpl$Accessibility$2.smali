.class Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility$2;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility$2;->this$1:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility$2;->this$1:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->-wrap0(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)V

    return-void
.end method
