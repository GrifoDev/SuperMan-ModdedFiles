.class Lcom/android/settings/PreviewPagerAdapter$2;
.super Ljava/lang/Object;
.source "PreviewPagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PreviewPagerAdapter;

.field final synthetic val$nextLayer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/PreviewPagerAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PreviewPagerAdapter$2;->this$0:Lcom/android/settings/PreviewPagerAdapter;

    iput-object p2, p0, Lcom/android/settings/PreviewPagerAdapter$2;->val$nextLayer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter$2;->val$nextLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
