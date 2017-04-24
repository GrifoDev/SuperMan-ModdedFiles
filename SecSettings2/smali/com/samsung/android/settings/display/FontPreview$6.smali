.class Lcom/samsung/android/settings/display/FontPreview$6;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FontPreview;->setFontsizeLayoutSevenOrEleven(Z)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview$6;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview$6;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview$6;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FontPreview;->-get1(Lcom/samsung/android/settings/display/FontPreview;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview$6;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FontPreview;->-get1(Lcom/samsung/android/settings/display/FontPreview;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0274

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-object v0
.end method
