.class Lcom/samsung/android/settings/display/FontPreview$8;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FontPreview;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview$8;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$8;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreview;->-set5(I)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$8;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreview;->-get1(Lcom/samsung/android/settings/display/FontPreview;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview$8;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/display/FontPreview;->-get19()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$8;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/FontPreview;->finish()V

    return-void
.end method
