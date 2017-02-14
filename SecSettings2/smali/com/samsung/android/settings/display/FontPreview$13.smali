.class Lcom/samsung/android/settings/display/FontPreview$13;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FontPreview;->badFontDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FontPreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FontPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview$13;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$13;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/FontPreview;->onCancelButtonPressed()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
