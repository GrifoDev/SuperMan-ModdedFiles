.class Lcom/samsung/android/settings/display/FontPreviewTablet$6;
.super Ljava/lang/Object;
.source "FontPreviewTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FontPreviewTablet;->setReHeightFontStyleListview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

.field final synthetic val$scrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FontPreviewTablet;Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$6;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    iput-object p2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$6;->val$scrollView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$6;->val$scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
