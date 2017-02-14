.class Lcom/samsung/android/settings/display/FontPreview$2;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview$2;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$2;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/FontPreview;->changeColor(I)V

    return-void
.end method
