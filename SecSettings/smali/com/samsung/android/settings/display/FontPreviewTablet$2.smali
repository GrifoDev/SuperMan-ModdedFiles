.class Lcom/samsung/android/settings/display/FontPreviewTablet$2;
.super Ljava/lang/Object;
.source "FontPreviewTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FontPreviewTablet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

.field final synthetic val$current:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FontPreviewTablet;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$2;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    iput p2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$2;->val$current:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$2;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get4(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$2;->val$current:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
