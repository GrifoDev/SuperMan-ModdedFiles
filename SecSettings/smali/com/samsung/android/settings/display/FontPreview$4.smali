.class Lcom/samsung/android/settings/display/FontPreview$4;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FontPreview;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview$4;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$4;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreview;->-get12(Lcom/samsung/android/settings/display/FontPreview;)Lcom/android/settings/PreviewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$4;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    iput p2, v0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$4;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/FontPreview;->-set2(Lcom/samsung/android/settings/display/FontPreview;Z)Z

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$4;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreview;->-set8(I)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$4;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreview;->-get1(Lcom/samsung/android/settings/display/FontPreview;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/display/FontPreview;->-get22()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void
.end method
